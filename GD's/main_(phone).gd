extends Node2D

@onready var dice_1 = $"Dice Area/Dice"
@onready var dice_2 = $"Dice Area/Dice_2"
@onready var dice_3 = $"Dice Area/Dice_3"
@onready var dice_4 = $"Dice Area/Dice_4"
@onready var dice_5 = $"Dice Area/Dice_5"

var full_house = false
var straight = false
var pair = false
var two_pair = false
var flush = false
var straight_flush = false
var three_of_a_kind = false
var four_of_a_kind = false
var five_of_a_kind = false

var rolled_hand

var goal = 60
var score = 0
var rolls = 5
var roll_amount = 0
var multiplier_display = 1
var multiplier = 1
var played_hand = false
var score_count = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_viewport().size = Vector2(1275, 1950)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$Menu/Goal.text = "Goal: " + str(Globals.goal)
	if rolled_hand == "Straight":
		straight = true
	else:
		straight = false
	if rolled_hand == "Pair":
		pair = true
	else:
		pair = false
	if rolled_hand == "Two Pair":
		two_pair = true
	else:
		two_pair = false
	if rolled_hand == "Three of a Kind":
		three_of_a_kind = true
	else:
		three_of_a_kind = false
	if rolled_hand == "Four of a Kind":
		four_of_a_kind = true
	else:
		four_of_a_kind = false
	if rolled_hand == "Five of a Kind":
		five_of_a_kind = true
	else:
		five_of_a_kind = false
	if rolled_hand == "Flush":
		flush = true
	else:
		flush = false
	if rolled_hand == "Straight Flush":
		straight_flush = true
	else:
		straight_flush = false
	if rolled_hand == "Full House":
		full_house = true
	else:
		full_house = false
	if score_count:
		if pair:
			multiplier += 1
		if straight:
			multiplier += 5
		if full_house:
			multiplier += 4
		if two_pair:
			multiplier += 2
		if three_of_a_kind:
			multiplier += 3
		if four_of_a_kind:
			multiplier += 4
		if five_of_a_kind:
			multiplier += 7
		if flush:
			multiplier += 7
		if straight_flush:
			multiplier += 9
		score = roll_amount * multiplier
		score_count = false
	if pair:
		multiplier_display = 2
	elif straight:
		multiplier_display = 6
	elif full_house:
		multiplier_display = 5
	elif two_pair:
		multiplier_display = 3
	elif three_of_a_kind:
		multiplier_display = 4
	elif four_of_a_kind:
		multiplier_display = 5
	elif five_of_a_kind:
		multiplier_display = 8
	elif flush:
		multiplier_display = 8
	elif straight_flush:
		multiplier_display = 10
	else:
		multiplier_display = 1
	$"Scoring Area/Multiplier".text = "Multiplier:
		" + str(multiplier_display)
	$"Scoring Area/Roll Amount".text = "Roll Amount:
		" + str(roll_amount)
	$"Dice Area/Rolls".text = "Rolls: " + str(rolls)
	$Menu/Score.text = "Score: " + str(score)
	roll_amount = dice_1.rolled_number + dice_2.rolled_number + dice_3.rolled_number + dice_4.rolled_number + dice_5.rolled_number
	if rolled_hand != null:
		$"Scoring Area/Label".text = rolled_hand
	var dice = [
	int(dice_1.rolled_number),
	int(dice_2.rolled_number),
	int(dice_3.rolled_number),
	int(dice_4.rolled_number),
	int(dice_5.rolled_number)
	]
	
	dice.sort()
	
	var counts = {}
	for d in dice:
		counts[d] = counts.get(d, 0) + 1
	var groups = counts.values()
	if dice_1.rolled_number != 0 and dice_1.rolled_number != 0 and dice_2.rolled_number != 0 and dice_3.rolled_number != 0 and dice_4.rolled_number != 0 and dice_5.rolled_number != 0:
		if dice == [1,2,3,4,5] or dice == [2,3,4,5,6]:
			rolled_hand = "Straight"
		elif 5 in groups:
			rolled_hand = "Five of a Kind"
		elif 4 in groups:
			rolled_hand = "Four of a Kind"
		elif 3 in groups and 2 in groups:
			rolled_hand = "Full House"
		elif 3 in groups:
			rolled_hand = "Three of a Kind"
		elif groups.count(2) == 2:
			rolled_hand = "Two Pair"
		elif 2 in groups:
			rolled_hand = "Pair"
		else:
			rolled_hand = "Hand Type"
	if played_hand:
		if score > Globals.goal - 1:
			Globals.money = snapped(score, 10) / 10
			played_hand = false
			$"Menu/Shop Button".visible = true
			$"Menu/Next Level Button".visible = true
		else:
			await get_tree().create_timer(2).timeout
			get_tree().change_scene_to_file("res://Scenes/game_over_screen.tscn")
			played_hand = false



func _on_button_pressed() -> void:
	if not played_hand:
		if rolls != 0:
			rolls -= 1
			dice_1.roll()
			dice_2.roll()
			dice_3.roll()
			dice_4.roll()
			dice_5.roll()


func _on_hand_requirements_pressed() -> void:
	$"Hand Requirements Page".visible = true


func _on_back_button_pressed() -> void:
	$"Hand Requirements Page".visible = false
	$"How To Play Page".visible = false


func _on_button_2_pressed() -> void:
	played_hand = true
	score_count = true


func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/shop_(phone).tscn")


func _on_next_level_button_pressed() -> void:
	get_tree().reload_current_scene()
	Globals.goal += 20


func _on_how_to_play_button_pressed() -> void:
	$"How To Play Page".visible = true
