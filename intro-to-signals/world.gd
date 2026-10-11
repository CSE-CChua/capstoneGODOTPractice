extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Area2D.connect("destroyTheWorld", asdf)

func asdf() -> void:
	get_tree().quit()
