extends Node2D


func go_scout() -> void:
	get_parent().exit_shopping()
	get_parent().enter_scouting()
