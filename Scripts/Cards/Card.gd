extends Sprite2D

#This is a general card node.
#A card is a button with sprites and labels.
#Variables of a card:
@export var cardname = "Blank"
var fighting = 0
var looting = 0
var imagepath = "Blank.png"

#Method to change image
func update_image() -> void:
	imagepath = str("res://Sprites/Cards/",cardname, ".png")
	self.texture = load(imagepath)

#Method to change name and variables
func load_cardname():
	print("loading blank Card!")

#When picked, triggers (if any), then tells scouting table
func pressed() -> void:
	picked()
	get_parent().scouting_pick(cardname)

#Triggers when Picked
func picked() -> void:
	pass

#Triggers when Scored
func scored() -> void:
	pass
