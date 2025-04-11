extends "Card.gd"

#Variables of this card
func _ready() -> void:
	load_cardname()
func load_cardname():
	cardname = "Goblin"
	fighting = 5
	looting = 0
	update_image()

func scored():
	print("add fighting")
	
	
