extends Node2D

@onready var anim = $AnimatedSprite2D

var sides = Globals.dice_two_sides

var selected = false

var rolled_number = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	anim.play("1")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if selected:
		$TextureRect.visible = true
	elif not selected:
		$TextureRect.visible = false
	if rolled_number == 1:
		anim.position = Vector2(0, -0.25)
		anim.play("1")
	elif rolled_number == 2:
		anim.position = Vector2(0, -0.25)
		anim.play("2")
	elif rolled_number == 3:
		anim.position = Vector2(0, -0.25)
		anim.play("3")
	elif rolled_number == 4:
		anim.position = Vector2(0, -0.25)
		anim.play("4")
	elif rolled_number == 5:
		anim.position = Vector2(0, -1)
		anim.play("5")
	elif rolled_number == 6:
		anim.position = Vector2(0, -1)
		anim.play("6")

func roll():
	if not selected:
		rolled_number = 0
		anim.play("Flip")
		await get_tree().create_timer(1.2).timeout
		rolled_number = sides[randi() % sides.size()]


func _on_button_pressed() -> void:
	if rolled_number != 0:
		if selected:
			selected = false
			return
		if not selected:
			selected = true
			return
