extends Node

var goal = 20
var money = 0

var Ones = 0
var Twos = 0
var Threes = 0
var Fours = 0
var Fives = 0
var Sixes = 0

var Ones_price = 0
var Twos_price = 0
var Threes_price = 0
var Fours_price = 0
var Fives_price = 0
var Sixes_price = 0

var dice_one_sides : Array = [1, 2, 3, 4, 5, 6]
var dice_two_sides : Array = [1, 2, 3, 4, 5, 6]
var dice_three_sides : Array = [1, 2, 3, 4, 5, 6]
var dice_four_sides : Array = [1, 2, 3, 4, 5, 6]
var dice_five_sides : Array = [1, 2, 3, 4, 5, 6]

func _process(delta: float) -> void:
	if Ones == 0:
		Ones_price = 1
	else:
		Ones_price = Ones * 3
	if Twos == 0:
		Twos_price = 1
	else:
		Twos_price = Twos * 4
	if Threes == 0:
		Threes_price = 1
	else:
		Threes_price = Threes * 5
	if Fours == 0:
		Fours_price = 1
	else:
		Fours_price = Fours * 6
	if Fives == 0:
		Fives_price = 1
	else:
		Fives_price = Fives * 7
	if Sixes == 0:
		Sixes_price = 1
	else:
		Sixes_price = Sixes * 8
