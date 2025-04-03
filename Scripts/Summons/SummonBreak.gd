extends "Summon.gd"

#Basic Summon (Break)

func ready():
	targeted = true

func summon_effect(pickedcard):
	print("pickedcard")
	print(pickedcard)
	get_parent().apply_damage(pickedcard,get_parent().power)
