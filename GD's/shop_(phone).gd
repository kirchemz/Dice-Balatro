extends Node2D

var dice_1 = preload("res://Miscellaneous/Screenshot 2026-02-02 160714.png")
var dice_2 = preload("res://Miscellaneous/Screenshot 2026-02-02 160722.png")
var dice_3 = preload("res://Miscellaneous/Screenshot 2026-02-02 160728.png")
var dice_4 = preload("res://Miscellaneous/Screenshot 2026-02-02 160741.png")
var dice_5 = preload("res://Miscellaneous/Screenshot 2026-02-02 160757.png")
var dice_6 = preload("res://Miscellaneous/Screenshot 2026-02-02 160805.png")

var dice_in_stock

var dice_1_open = false
var dice_2_open = false
var dice_3_open = false
var dice_4_open = false
var dice_5_open = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_viewport().size = Vector2(1275, 1950)
	dice_in_stock = randi_range(1, 6)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$"Shop Area/Button".text = "Buy $" + str(Globals.Ones_price)
	$"Shop Area/Button2".text = "Buy $" + str(Globals.Twos_price)
	$"Shop Area/Button3".text = "Buy $" + str(Globals.Threes_price)
	$"Shop Area/Button4".text = "Buy $" + str(Globals.Fours_price)
	$"Shop Area/Button5".text = "Buy $" + str(Globals.Fives_price)
	$"Shop Area/Button6".text = "Buy $" + str(Globals.Sixes_price)
	$"Dice Customization Page/Control/1s/Label".text = str(Globals.Ones)
	$"Dice Customization Page/Control/2s/Label".text = str(Globals.Twos)
	$"Dice Customization Page/Control/3s/Label".text = str(Globals.Threes)
	$"Dice Customization Page/Control/4s/Label".text = str(Globals.Fours)
	$"Dice Customization Page/Control/5s/Label".text = str(Globals.Fives)
	$"Dice Customization Page/Control/6s/Label".text = str(Globals.Sixes)
	$"Dice Customization Page/Dice 1/Side_1".frame = Globals.dice_one_sides[0] - 1
	$"Dice Customization Page/Dice 1/Side_2".frame = Globals.dice_one_sides[1] - 1
	$"Dice Customization Page/Dice 1/Side_3".frame = Globals.dice_one_sides[2] - 1
	$"Dice Customization Page/Dice 1/Side_4".frame = Globals.dice_one_sides[3] - 1
	$"Dice Customization Page/Dice 1/Side_5".frame = Globals.dice_one_sides[4] - 1
	$"Dice Customization Page/Dice 1/Side_6".frame = Globals.dice_one_sides[5] - 1
	$"Dice Customization Page/Dice 2/Side_1".frame = Globals.dice_two_sides[0] - 1
	$"Dice Customization Page/Dice 2/Side_2".frame = Globals.dice_two_sides[1] - 1
	$"Dice Customization Page/Dice 2/Side_3".frame = Globals.dice_two_sides[2] - 1
	$"Dice Customization Page/Dice 2/Side_4".frame = Globals.dice_two_sides[3] - 1
	$"Dice Customization Page/Dice 2/Side_5".frame = Globals.dice_two_sides[4] - 1
	$"Dice Customization Page/Dice 2/Side_6".frame = Globals.dice_two_sides[5] - 1
	$"Dice Customization Page/Dice 3/Side_1".frame = Globals.dice_three_sides[0] - 1
	$"Dice Customization Page/Dice 3/Side_2".frame = Globals.dice_three_sides[1] - 1
	$"Dice Customization Page/Dice 3/Side_3".frame = Globals.dice_three_sides[2] - 1
	$"Dice Customization Page/Dice 3/Side_4".frame = Globals.dice_three_sides[3] - 1
	$"Dice Customization Page/Dice 3/Side_5".frame = Globals.dice_three_sides[4] - 1
	$"Dice Customization Page/Dice 3/Side_6".frame = Globals.dice_three_sides[5] - 1
	$"Dice Customization Page/Dice 4/Side_1".frame = Globals.dice_four_sides[0] - 1
	$"Dice Customization Page/Dice 4/Side_2".frame = Globals.dice_four_sides[1] - 1
	$"Dice Customization Page/Dice 4/Side_3".frame = Globals.dice_four_sides[2] - 1
	$"Dice Customization Page/Dice 4/Side_4".frame = Globals.dice_four_sides[3] - 1
	$"Dice Customization Page/Dice 4/Side_5".frame = Globals.dice_four_sides[4] - 1
	$"Dice Customization Page/Dice 4/Side_6".frame = Globals.dice_four_sides[5] - 1
	$"Dice Customization Page/Dice 5/Side_1".frame = Globals.dice_five_sides[0] - 1
	$"Dice Customization Page/Dice 5/Side_2".frame = Globals.dice_five_sides[1] - 1
	$"Dice Customization Page/Dice 5/Side_3".frame = Globals.dice_five_sides[2] - 1
	$"Dice Customization Page/Dice 5/Side_4".frame = Globals.dice_five_sides[3] - 1
	$"Dice Customization Page/Dice 5/Side_5".frame = Globals.dice_five_sides[4] - 1
	$"Dice Customization Page/Dice 5/Side_6".frame = Globals.dice_five_sides[5] - 1
	$Menu/Money.text = "Money: " + str(Globals.money)


func _on_next_level_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_(phone).tscn")
	Globals.goal += 20


func _on_dice_customization_button_pressed() -> void:
	$"Dice Customization Page".visible = true


func _on_dice_1_1_1_pressed() -> void:
	if Globals.Ones >= 1:
		Globals.Ones -= 1
		if dice_1_open:
			Globals.dice_one_sides[0] = 1
		if dice_2_open:
			Globals.dice_two_sides[0] = 1
		if dice_3_open:
			Globals.dice_three_sides[0] = 1
		if dice_4_open:
			Globals.dice_four_sides[0] = 1
		if dice_5_open:
			Globals.dice_five_sides[0] = 1


func _on_dice_1_1_2_pressed() -> void:
	if Globals.Twos >= 1:
		Globals.Twos -= 1
		if dice_1_open:
			Globals.dice_one_sides[0] = 2
		if dice_2_open:
			Globals.dice_two_sides[0] = 2
		if dice_3_open:
			Globals.dice_three_sides[0] = 2
		if dice_4_open:
			Globals.dice_four_sides[0] = 2
		if dice_5_open:
			Globals.dice_five_sides[0] = 2


func _on_dice_1_1_3_pressed() -> void:
	if Globals.Threes >= 1:
		Globals.Threes -= 1
		if dice_1_open:
			Globals.dice_one_sides[0] = 3
		if dice_2_open:
			Globals.dice_two_sides[0] = 3
		if dice_3_open:
			Globals.dice_three_sides[0] = 3
		if dice_4_open:
			Globals.dice_four_sides[0] = 3
		if dice_5_open:
			Globals.dice_five_sides[0] = 3


func _on_dice_1_1_4_pressed() -> void:
	if Globals.Fours >= 1:
		Globals.Fours -= 1
		if dice_1_open:
			Globals.dice_one_sides[0] = 4
		if dice_2_open:
			Globals.dice_two_sides[0] = 4
		if dice_3_open:
			Globals.dice_three_sides[0] = 4
		if dice_4_open:
			Globals.dice_four_sides[0] = 4
		if dice_5_open:
			Globals.dice_five_sides[0] = 4


func _on_dice_1_1_5_pressed() -> void:
	if Globals.Fives >= 1:
		Globals.Fives -= 1
		if dice_1_open:
			Globals.dice_one_sides[0] = 5
		if dice_2_open:
			Globals.dice_two_sides[0] = 5
		if dice_3_open:
			Globals.dice_three_sides[0] = 5
		if dice_4_open:
			Globals.dice_four_sides[0] = 5
		if dice_5_open:
			Globals.dice_five_sides[0] = 5


func _on_dice_1_1_6_pressed() -> void:
	if Globals.Sixes >= 1:
		Globals.Sixes -= 1
		if dice_1_open:
			Globals.dice_one_sides[0] = 6
		if dice_2_open:
			Globals.dice_two_sides[0] = 6
		if dice_3_open:
			Globals.dice_three_sides[0] = 6
		if dice_4_open:
			Globals.dice_four_sides[0] = 6
		if dice_5_open:
			Globals.dice_five_sides[0] = 6


func _on_dice_1_button_pressed() -> void:
	dice_1_open = true
	$"Dice Customization Page/Dice 1".visible = true
	$"Dice Customization Page/Control".visible = false
	$"Dice Customization Page/Dice Custom Back Button".visible = false
	$"Dice Customization Page/Dice1 Button".visible = false
	$"Dice Customization Page/Dice2 Button".visible = false
	$"Dice Customization Page/Dice3 Button".visible = false
	$"Dice Customization Page/Dice4 Button".visible = false
	$"Dice Customization Page/Dice5 Button".visible = false


func _on_dice_custom_back_button_pressed() -> void:
	$"Dice Customization Page".visible = false


func _on_dice_1_2_1_pressed() -> void:
	if Globals.Ones >= 1:
		Globals.Ones -= 1
		if dice_1_open:
			Globals.dice_one_sides[1] = 1
		if dice_2_open:
			Globals.dice_two_sides[1] = 1
		if dice_3_open:
			Globals.dice_three_sides[1] = 1
		if dice_4_open:
			Globals.dice_four_sides[1] = 1
		if dice_5_open:
			Globals.dice_five_sides[1] = 1


func _on_dice_1_2_2_pressed() -> void:
	if Globals.Twos >= 1:
		Globals.Twos -= 1
		if dice_1_open:
			Globals.dice_one_sides[1] = 2
		if dice_2_open:
			Globals.dice_two_sides[1] = 2
		if dice_3_open:
			Globals.dice_three_sides[1] = 2
		if dice_4_open:
			Globals.dice_four_sides[1] = 2
		if dice_5_open:
			Globals.dice_five_sides[1] = 2


func _on_dice_1_2_3_pressed() -> void:
	if Globals.Threes >= 1:
		Globals.Threes -= 1
		if dice_1_open:
			Globals.dice_one_sides[1] = 3
		if dice_2_open:
			Globals.dice_two_sides[1] = 3
		if dice_3_open:
			Globals.dice_three_sides[1] = 3
		if dice_4_open:
			Globals.dice_four_sides[1] = 3
		if dice_5_open:
			Globals.dice_five_sides[1] = 3


func _on_dice_1_2_4_pressed() -> void:
	if Globals.Fours >= 1:
		Globals.Fours -= 1
		if dice_1_open:
			Globals.dice_one_sides[1] = 4
		if dice_2_open:
			Globals.dice_two_sides[1] = 4
		if dice_3_open:
			Globals.dice_three_sides[1] = 4
		if dice_4_open:
			Globals.dice_four_sides[1] = 4
		if dice_5_open:
			Globals.dice_five_sides[1] = 4


func _on_dice_1_2_5_pressed() -> void:
	if Globals.Fives >= 1:
		Globals.Fives -= 1
		if dice_1_open:
			Globals.dice_one_sides[1] = 5
		if dice_2_open:
			Globals.dice_two_sides[1] = 5
		if dice_3_open:
			Globals.dice_three_sides[1] = 5
		if dice_4_open:
			Globals.dice_four_sides[1] = 5
		if dice_5_open:
			Globals.dice_five_sides[1] = 5


func _on_dice_1_2_6_pressed() -> void:
	if Globals.Sixes >= 1:
		Globals.Sixes -= 1
		if dice_1_open:
			Globals.dice_one_sides[1] = 6
		if dice_2_open:
			Globals.dice_two_sides[1] = 6
		if dice_3_open:
			Globals.dice_three_sides[1] = 6
		if dice_4_open:
			Globals.dice_four_sides[1] = 6
		if dice_5_open:
			Globals.dice_five_sides[1] = 6

func _on_dice_1_3_1_pressed() -> void:
	if Globals.Ones >= 1:
		Globals.Ones -= 1
		if dice_1_open:
			Globals.dice_one_sides[2] = 1
		if dice_2_open:
			Globals.dice_two_sides[2] = 1
		if dice_3_open:
			Globals.dice_three_sides[2] = 1
		if dice_4_open:
			Globals.dice_four_sides[2] = 1
		if dice_5_open:
			Globals.dice_five_sides[2] = 1


func _on_dice_1_3_2_pressed() -> void:
	if Globals.Twos >= 1:
		Globals.Twos -= 1
		if dice_1_open:
			Globals.dice_one_sides[2] = 2
		if dice_2_open:
			Globals.dice_two_sides[2] = 2
		if dice_3_open:
			Globals.dice_three_sides[2] = 2
		if dice_4_open:
			Globals.dice_four_sides[2] = 2
		if dice_5_open:
			Globals.dice_five_sides[2] = 2
	
func _on_dice_1_3_3_pressed() -> void:
	if Globals.Threes >= 1:
		Globals.Threes -= 1
		if dice_1_open:
			Globals.dice_one_sides[2] = 3
		if dice_2_open:
			Globals.dice_two_sides[2] = 3
		if dice_3_open:
			Globals.dice_three_sides[2] = 3
		if dice_4_open:
			Globals.dice_four_sides[2] = 3
		if dice_5_open:
			Globals.dice_five_sides[2] = 3


func _on_dice_1_3_4_pressed() -> void:
	if Globals.Fours >= 1:
		Globals.Fours -= 1
		if dice_1_open:
			Globals.dice_one_sides[2] = 4
		if dice_2_open:
			Globals.dice_two_sides[2] = 4
		if dice_3_open:
			Globals.dice_three_sides[2] = 4
		if dice_4_open:
			Globals.dice_four_sides[2] = 4
		if dice_5_open:
			Globals.dice_five_sides[2] = 4


func _on_dice_1_3_5_pressed() -> void:
	if Globals.Fives >= 1:
		Globals.Fives -= 1
		if dice_1_open:
			Globals.dice_one_sides[2] = 5
		if dice_2_open:
			Globals.dice_two_sides[2] = 5
		if dice_3_open:
			Globals.dice_three_sides[2] = 5
		if dice_4_open:
			Globals.dice_four_sides[2] = 5
		if dice_5_open:
			Globals.dice_five_sides[2] = 5


func _on_dice_1_3_6_pressed() -> void:
	if Globals.Sixes >= 1:
		Globals.Sixes -= 1
		if dice_1_open:
			Globals.dice_one_sides[2] = 6
		if dice_2_open:
			Globals.dice_two_sides[2] = 6
		if dice_3_open:
			Globals.dice_three_sides[2] = 6
		if dice_4_open:
			Globals.dice_four_sides[2] = 6
		if dice_5_open:
			Globals.dice_five_sides[2] = 6


func _on_dice_1_4_1_pressed() -> void:
	if Globals.Ones >= 1:
		Globals.Ones -= 1
		if dice_1_open:
			Globals.dice_one_sides[3] = 1
		if dice_2_open:
			Globals.dice_two_sides[3] = 1
		if dice_3_open:
			Globals.dice_three_sides[3] = 1
		if dice_4_open:
			Globals.dice_four_sides[3] = 1
		if dice_5_open:
			Globals.dice_five_sides[3] = 1


func _on_dice_1_4_2_pressed() -> void:
	if Globals.Twos >= 1:
		Globals.Twos -= 1
		if dice_1_open:
			Globals.dice_one_sides[3] = 2
		if dice_2_open:
			Globals.dice_two_sides[3] = 2
		if dice_3_open:
			Globals.dice_three_sides[3] = 2
		if dice_4_open:
			Globals.dice_four_sides[3] = 2
		if dice_5_open:
			Globals.dice_five_sides[3] = 2


func _on_dice_1_4_3_pressed() -> void:
	if Globals.Threes >= 1:
		Globals.Threes -= 1
		if dice_1_open:
			Globals.dice_one_sides[3] = 3
		if dice_2_open:
			Globals.dice_two_sides[3] = 3
		if dice_3_open:
			Globals.dice_three_sides[3] = 3
		if dice_4_open:
			Globals.dice_four_sides[3] = 3
		if dice_5_open:
			Globals.dice_five_sides[3] = 3


func _on_dice_1_4_4_pressed() -> void:
	if Globals.Fours >= 1:
		Globals.Fours -= 1
		if dice_1_open:
			Globals.dice_one_sides[3] = 4
		if dice_2_open:
			Globals.dice_two_sides[3] = 4
		if dice_3_open:
			Globals.dice_three_sides[3] = 4
		if dice_4_open:
			Globals.dice_four_sides[3] = 4
		if dice_5_open:
			Globals.dice_five_sides[3] = 4


func _on_dice_1_4_5_pressed() -> void:
	if Globals.Fives >= 1:
		Globals.Fives -= 1
		if dice_1_open:
			Globals.dice_one_sides[3] = 5
		if dice_2_open:
			Globals.dice_two_sides[3] = 5
		if dice_3_open:
			Globals.dice_three_sides[3] = 5
		if dice_4_open:
			Globals.dice_four_sides[3] = 5
		if dice_5_open:
			Globals.dice_five_sides[3] = 5


func _on_dice_1_4_6_pressed() -> void:
	if Globals.Sixes >= 1:
		Globals.Sixes -= 1
		if dice_1_open:
			Globals.dice_one_sides[3] = 6
		if dice_2_open:
			Globals.dice_two_sides[3] = 6
		if dice_3_open:
			Globals.dice_three_sides[3] = 6
		if dice_4_open:
			Globals.dice_four_sides[3] = 6
		if dice_5_open:
			Globals.dice_five_sides[3] = 6


func _on_dice_1_5_1_pressed() -> void:
	if Globals.Ones >= 1:
		Globals.Ones -= 1
		if dice_1_open:
			Globals.dice_one_sides[4] = 1
		if dice_2_open:
			Globals.dice_two_sides[4] = 1
		if dice_3_open:
			Globals.dice_three_sides[4] = 1
		if dice_4_open:
			Globals.dice_four_sides[4] = 1
		if dice_5_open:
			Globals.dice_five_sides[4] = 1


func _on_dice_1_5_2_pressed() -> void:
	if Globals.Twos >= 1:
		Globals.Twos -= 1
		if dice_1_open:
			Globals.dice_one_sides[4] = 2
		if dice_2_open:
			Globals.dice_two_sides[4] = 2
		if dice_3_open:
			Globals.dice_three_sides[4] = 2
		if dice_4_open:
			Globals.dice_four_sides[4] = 2
		if dice_5_open:
			Globals.dice_five_sides[4] = 2


func _on_dice_1_5_3_pressed() -> void:
	if Globals.Threes >= 1:
		Globals.Threes -= 1
		if dice_1_open:
			Globals.dice_one_sides[4] = 3
		if dice_2_open:
			Globals.dice_two_sides[4] = 3
		if dice_3_open:
			Globals.dice_three_sides[4] = 3
		if dice_4_open:
			Globals.dice_four_sides[4] = 3
		if dice_5_open:
				Globals.dice_five_sides[4] = 3


func _on_dice_1_5_4_pressed() -> void:
	if Globals.Fours >= 1:
		Globals.Fours -= 1
		if dice_1_open:
			Globals.dice_one_sides[4] = 4
		if dice_2_open:
			Globals.dice_two_sides[4] = 4
		if dice_3_open:
			Globals.dice_three_sides[4] = 4
		if dice_4_open:
			Globals.dice_four_sides[4] = 4
		if dice_5_open:
			Globals.dice_five_sides[4] = 4


func _on_dice_1_5_5_pressed() -> void:
	if Globals.Fives >= 1:
		Globals.Fives -= 1
		if dice_1_open:
			Globals.dice_one_sides[4] = 5
		if dice_2_open:
			Globals.dice_two_sides[4] = 5
		if dice_3_open:
			Globals.dice_three_sides[4] = 5
		if dice_4_open:
			Globals.dice_four_sides[4] = 5
		if dice_5_open:
			Globals.dice_five_sides[4] = 5


func _on_dice_1_5_6_pressed() -> void:
	if Globals.Sixes >= 1:
		Globals.Sixes -= 1
		if dice_1_open:
			Globals.dice_one_sides[4] = 6
		if dice_2_open:
			Globals.dice_two_sides[4] = 6
		if dice_3_open:
			Globals.dice_three_sides[4] = 6
		if dice_4_open:
			Globals.dice_four_sides[4] = 6
		if dice_5_open:
			Globals.dice_five_sides[4] = 6


func _on_dice_1_6_1_pressed() -> void:
	if Globals.Ones >= 1:
		Globals.Ones -= 1
		if dice_1_open:
			Globals.dice_one_sides[5] = 1
		if dice_2_open:
			Globals.dice_two_sides[5] = 1
		if dice_3_open:
			Globals.dice_three_sides[5] = 1
		if dice_4_open:
			Globals.dice_four_sides[5] = 1
		if dice_5_open:
			Globals.dice_five_sides[5] = 1


func _on_dice_1_6_2_pressed() -> void:
	if Globals.Twos >= 1:
		Globals.Twos -= 1
		if dice_1_open:
			Globals.dice_one_sides[5] = 2
		if dice_2_open:
			Globals.dice_two_sides[5] = 2
		if dice_3_open:
			Globals.dice_three_sides[5] = 2
		if dice_4_open:
			Globals.dice_four_sides[5] = 2
		if dice_5_open:
			Globals.dice_five_sides[5] = 2


func _on_dice_1_6_3_pressed() -> void:
	if Globals.Threes >= 1:
		Globals.Threes -= 1
		if dice_1_open:
			Globals.dice_one_sides[5] = 3
		if dice_2_open:
			Globals.dice_two_sides[5] = 3
		if dice_3_open:
			Globals.dice_three_sides[5] = 3
		if dice_4_open:
			Globals.dice_four_sides[5] = 3
		if dice_5_open:
			Globals.dice_five_sides[5] = 3


func _on_dice_1_6_4_pressed() -> void:
	if Globals.Fours >= 1:
		Globals.Fours -= 1
		if dice_1_open:
			Globals.dice_one_sides[5] = 4
		if dice_2_open:
			Globals.dice_two_sides[5] = 4
		if dice_3_open:
			Globals.dice_three_sides[5] = 4
		if dice_4_open:
			Globals.dice_four_sides[5] = 4
		if dice_5_open:
			Globals.dice_five_sides[5] = 4


func _on_dice_1_6_5_pressed() -> void:
	if Globals.Fives >= 1:
		Globals.Fives -= 1
		if dice_1_open:
			Globals.dice_one_sides[5] = 5
		if dice_2_open:
			Globals.dice_two_sides[5] = 5
		if dice_3_open:
			Globals.dice_three_sides[5] = 5
		if dice_4_open:
			Globals.dice_four_sides[5] = 5
		if dice_5_open:
			Globals.dice_five_sides[5] = 5


func _on_dice_1_6_6_pressed() -> void:
	if Globals.Sixes >= 1:
		Globals.Sixes -= 1
		if dice_1_open:
			Globals.dice_one_sides[5] = 6
		if dice_2_open:
			Globals.dice_two_sides[5] = 6
		if dice_3_open:
			Globals.dice_three_sides[5] = 6
		if dice_4_open:
			Globals.dice_four_sides[5] = 6
		if dice_5_open:
			Globals.dice_five_sides[5] = 6


func _on_dice_1_back_button_pressed() -> void:
	dice_1_open = false
	$"Dice Customization Page/Dice 1".visible = false
	$"Dice Customization Page/Control".visible = true
	$"Dice Customization Page/Dice Custom Back Button".visible = true
	$"Dice Customization Page/Dice1 Button".visible = true
	$"Dice Customization Page/Dice2 Button".visible = true
	$"Dice Customization Page/Dice3 Button".visible = true
	$"Dice Customization Page/Dice4 Button".visible = true
	$"Dice Customization Page/Dice5 Button".visible = true


func _on_hand_requirement_back_button_pressed() -> void:
	$"Hand Requirements Page".visible = false


func _on_dice_2_button_pressed() -> void:
	dice_2_open = true
	$"Dice Customization Page/Dice 2".visible = true
	$"Dice Customization Page/Control".visible = false
	$"Dice Customization Page/Dice Custom Back Button".visible = false
	$"Dice Customization Page/Dice1 Button".visible = false
	$"Dice Customization Page/Dice2 Button".visible = false
	$"Dice Customization Page/Dice3 Button".visible = false
	$"Dice Customization Page/Dice4 Button".visible = false
	$"Dice Customization Page/Dice5 Button".visible = false


func _on_dice_2_back_button_pressed() -> void:
	dice_2_open = false
	$"Dice Customization Page/Dice 2".visible = false
	$"Dice Customization Page/Control".visible = true
	$"Dice Customization Page/Dice Custom Back Button".visible = true
	$"Dice Customization Page/Dice1 Button".visible = true
	$"Dice Customization Page/Dice2 Button".visible = true
	$"Dice Customization Page/Dice3 Button".visible = true
	$"Dice Customization Page/Dice4 Button".visible = true
	$"Dice Customization Page/Dice5 Button".visible = true


func _on_dice_3_button_pressed() -> void:
	dice_3_open = true
	$"Dice Customization Page/Dice 3".visible = true
	$"Dice Customization Page/Control".visible = false
	$"Dice Customization Page/Dice Custom Back Button".visible = false
	$"Dice Customization Page/Dice1 Button".visible = false
	$"Dice Customization Page/Dice2 Button".visible = false
	$"Dice Customization Page/Dice3 Button".visible = false
	$"Dice Customization Page/Dice4 Button".visible = false
	$"Dice Customization Page/Dice5 Button".visible = false


func _on_dice_3_back_button_pressed() -> void:
	dice_3_open = false
	$"Dice Customization Page/Dice 3".visible = false
	$"Dice Customization Page/Control".visible = true
	$"Dice Customization Page/Dice Custom Back Button".visible = true
	$"Dice Customization Page/Dice1 Button".visible = true
	$"Dice Customization Page/Dice2 Button".visible = true
	$"Dice Customization Page/Dice3 Button".visible = true
	$"Dice Customization Page/Dice4 Button".visible = true
	$"Dice Customization Page/Dice5 Button".visible = true


func _on_dice_4_button_pressed() -> void:
	dice_4_open = true
	$"Dice Customization Page/Dice 4".visible = true
	$"Dice Customization Page/Control".visible = false
	$"Dice Customization Page/Dice Custom Back Button".visible = false
	$"Dice Customization Page/Dice1 Button".visible = false
	$"Dice Customization Page/Dice2 Button".visible = false
	$"Dice Customization Page/Dice3 Button".visible = false
	$"Dice Customization Page/Dice4 Button".visible = false
	$"Dice Customization Page/Dice5 Button".visible = false


func _on_dice_4_back_button_pressed() -> void:
	dice_4_open = false
	$"Dice Customization Page/Dice 4".visible = false
	$"Dice Customization Page/Control".visible = true
	$"Dice Customization Page/Dice Custom Back Button".visible = true
	$"Dice Customization Page/Dice1 Button".visible = true
	$"Dice Customization Page/Dice2 Button".visible = true
	$"Dice Customization Page/Dice3 Button".visible = true
	$"Dice Customization Page/Dice4 Button".visible = true
	$"Dice Customization Page/Dice5 Button".visible = true


func _on_dice_5_button_pressed() -> void:
	dice_5_open = true
	$"Dice Customization Page/Dice 5".visible = true
	$"Dice Customization Page/Control".visible = false
	$"Dice Customization Page/Dice Custom Back Button".visible = false
	$"Dice Customization Page/Dice1 Button".visible = false
	$"Dice Customization Page/Dice2 Button".visible = false
	$"Dice Customization Page/Dice3 Button".visible = false
	$"Dice Customization Page/Dice4 Button".visible = false
	$"Dice Customization Page/Dice5 Button".visible = false


func _on_dice_5_back_button_pressed() -> void:
	dice_5_open = false
	$"Dice Customization Page/Dice 5".visible = false
	$"Dice Customization Page/Control".visible = true
	$"Dice Customization Page/Dice Custom Back Button".visible = true
	$"Dice Customization Page/Dice1 Button".visible = true
	$"Dice Customization Page/Dice2 Button".visible = true
	$"Dice Customization Page/Dice3 Button".visible = true
	$"Dice Customization Page/Dice4 Button".visible = true
	$"Dice Customization Page/Dice5 Button".visible = true


func _on_button_pressed() -> void:
	if Globals.money >= Globals.Ones_price:
		Globals.money -= Globals.Ones_price
		Globals.Ones += 1
		Globals.total_Ones += 1


func _on_button_2_pressed() -> void:
	if Globals.money >= Globals.Twos_price:
		Globals.money -= Globals.Twos_price
		Globals.Twos += 1
		Globals.total_Twos += 1


func _on_button_3_pressed() -> void:
	if Globals.money >= Globals.Threes_price:
		Globals.money -= Globals.Threes_price
		Globals.Threes += 1
		Globals.total_Threes += 1


func _on_button_4_pressed() -> void:
	if Globals.money >= Globals.Fours_price:
		Globals.money -= Globals.Fours_price
		Globals.Fours += 1
		Globals.total_Fours += 1


func _on_button_5_pressed() -> void:
	if Globals.money >= Globals.Fives_price:
		Globals.money -= Globals.Fives_price
		Globals.Fives += 1
		Globals.total_Fives += 1


func _on_button_6_pressed() -> void:
	if Globals.money >= Globals.Sixes_price:
		Globals.money -= Globals.Sixes_price
		Globals.Sixes += 1
		Globals.total_Sixes += 1
