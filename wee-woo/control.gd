extends Control

var combat_power = 0

var is_jacket_equipped = false
var is_gloves_equipped = false
var is_shoes_equipped = false

func _on_leather_jacket_pressed():
	if is_jacket_equipped == false:
		combat_power += 15
		is_jacket_equipped = true
		$leather_jacket.text = "Unequip Leather Jacket\n-15 Combat Power"
	else:
		combat_power -= 15
		is_jacket_equipped = false
		$leather_jacket.text = "Equip Leather Jacket\n+15 Combat Power"
	
	combat_power = max(0, combat_power)
	$Label.text = "Combat Power: " + str(combat_power)


func _on_leather_gloves_pressed():
	if is_gloves_equipped == false:
		combat_power += 5
		is_gloves_equipped = true
		$leather_gloves.text = "Unequip Leather Gloves\n-5 Combat Power"
	else:
		combat_power -= 15
		is_gloves_equipped = false
		$leather_gloves.text = "Equip Leather Gloves\n+5 Combat Power"
		
	combat_power = max(0, combat_power)
	$Label.text = "Combat Power: " + str(combat_power)


func _on_runner_shoes_pressed():
	if is_shoes_equipped == false:
		combat_power += 10
		is_shoes_equipped = true
		$runner_shoes.text = "Unequip Runner Shoes\n-10 Combat Power"
	else:
		combat_power -= 10
		is_shoes_equipped = false
		$runner_shoes.text = "Equip Runner Shoes\n+10 Combat Power"
		
	combat_power = max(0, combat_power)
	$Label.text = "Combat Power: " + str(combat_power)
