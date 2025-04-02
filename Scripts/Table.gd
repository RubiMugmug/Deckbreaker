extends Node

var Cards = [get_node("Card1"),get_node("Card2"),get_node("Card3")]
var power = 4

func slot_to_node(slot):
	return get_node("Card"+str(slot))

func table_pick(pickedslot):
	slot_to_node(pickedslot).reduce_life(power)
	#if Cards[pickedslot].type == "monster":
	#	Cards[pickedslot].reduce_life
	
func table_break(brokenslot):
	print("Card broken at slot")
	print(brokenslot)
