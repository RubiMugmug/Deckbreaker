extends Node

var picks = []
var deck = []

func _ready() -> void:
	picks = []
	deck = ["Goblin","Goblin","Goblin",
	"Coin_Pouch","Coin_Pouch","Coin_Pouch",
	"Walking_Fungus","Walking_Fungus","Walking_Fungus"]
	deck.shuffle()
	draw_three()
	print("ready")

func draw_three():
	draw($Card1)
	draw($Card2)
	draw($Card3)

func draw(child):
	if len(deck)>0:
		var cardname = deck.pop_front()
		var script = load(str("res://Scripts/Cards/",cardname, ".gd"))
		child.set_script(script)
		child.load_cardname()
	else:
		print("No cards")

func scouting_pick(cardname):
	picks.append(cardname)
	print(picks)
	draw_three()

func go_smash():
	print("Smash")
	get_parent().enter_smashing()
	get_parent().exit_scouting()

func go_scout() -> void:
	pass # Replace with function body.
