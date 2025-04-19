extends Node2D



func _ready():
	enter_scouting()
	print("readu")
	
#These animations control screens entering and exiting
func enter_scouting():
	$Table_Enter.play("Scouting Enter")
func enter_smashing():
	$Table_Enter.play("Smashing Enter")		
func enter_shopping():
	$Table_Enter.play("Shopping Enter")

func exit_scouting():
	$Table_Exit.play("Scouting Exit")
func exit_smashing():
	$Table_Exit.play("Smashing Exit")
func exit_shopping():
	$Table_Exit.play("Shopping Exit")
