extends Button

#Generic Summon
#Stores Summon Variables
@export var slot = 0
var targeted = true

func _pressed() -> void:
	get_parent().table_press(slot)
	card_press()
	if targeted:
		get_parent().table_targeting()

#Activated Summon Functions
func card_press():
	pass
	
#Targeted Summon Functions
func summon_effect(pickedcard):
	print("empty effect on")
	print(pickedcard)
	pass
