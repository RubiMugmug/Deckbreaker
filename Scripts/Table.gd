extends Node2D

func ready():
	$AnimationPlayer.play("Entering")

func exit_scouting():
	$Scouting.visible=false

func enter_smashing():
	$Smashing.visible=true
