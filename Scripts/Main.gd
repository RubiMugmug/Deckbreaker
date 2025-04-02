extends Node
var Card = preload("res://Scenes/Card.tscn")
var Card_Instance_1 = Card.instantiate()
var Card_Instance_2 = Card.instantiate()
var Card_Instance_3 = Card.instantiate()
func _ready():
	Card_Instance_1.position.x = 100
	Card_Instance_1.position.y = 300
	add_child(Card_Instance_1)
	Card_Instance_2.position.x = 400
	Card_Instance_2.position.y = 300
	add_child(Card_Instance_2)
	Card_Instance_3.position.x = 700
	Card_Instance_3.position.y = 300
	add_child(Card_Instance_3)
