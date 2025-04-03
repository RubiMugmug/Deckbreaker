extends Button

#This is a general card node.
#A card is a button with sprites and labels.

#Card node has three jobs
#Store and display its variables
#Tell the table it is pressed
#Know what methods on the table to call

#Set up variables
@export var slot = 1
var life = 1
var type = "monster"
func _ready() -> void:
	#Display Variables
	get_node("LifeLabel").text = str(life)

#Tells the Table it is pressed
func _pressed() -> void:
	get_parent().table_pick(slot)

#All cards can reduce their Life.
#Item cards have Lock not Life, but they are coded as Life (fuck you Rubi).
#When it reaches 0 they break.
#When cards break they 
func reduce_life(damage):
	life -= damage
	get_node("LifeLabel").text = str(life)
	if life <= 0:
		get_parent().table_break(slot) #Generic Break
		card_break() #Specific Break

#Some cards have effects when they break.
#Use this method to script specific cards that inherit a general card.
func card_break():
	pass
