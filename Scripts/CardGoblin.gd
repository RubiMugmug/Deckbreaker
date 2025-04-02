extends "Card.gd"

#Each different card script sets their own variables and labels.
#Probably shouldnt use the ready method for that, maybe an "ETB" method.
func _ready() -> void:
	life = 15
	get_node("LifeLabel").text = str(life)

#Break trigger on the Goblin
func card_break() -> void:
	print("Goblin Card Broke")
