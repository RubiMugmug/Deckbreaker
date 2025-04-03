extends Node

var power = 4
#Saves last pressed summon slot
var activesummon = 0
var activecard = 0
#Saves the game state
var state = "neutral"

#Returns Cards and Summons from their slot.
func slot_to_card(slot):
	return get_node("Card"+str(slot))

func slot_to_summon(slot):
	return get_node("Summon"+str(slot))

func table_pick(pickedslot):
	if state == "targeting":
		activecard = pickedslot
		slot_to_summon(activesummon).summon_effect(activecard)
		state = "neutral"
		activesummon = 0
		activecard = 0
	else:
		pass

	
func table_break(brokenslot):
	print("Card broken at slot")
	print(brokenslot)

func table_targeting():
	state = "targeting"
	
func table_press(pressedslot):
	print("Summon activated at slot")
	print(pressedslot)
	activesummon = pressedslot

func _on_button_pressed() -> void:
	activesummon = 0
	state = "neutral"
		
#Generic Effects
func apply_damage(target,damage):
	slot_to_card(target).reduce_life(damage)
