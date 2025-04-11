extends "Card.gd"

#Variables of this card
func _ready() -> void:
	load_cardname()
func load_cardname():
	cardname = "Coin_Pouch"
	fighting = 0
	looting = 5
	update_image()

func scored():
	print("add looting")
	
	
