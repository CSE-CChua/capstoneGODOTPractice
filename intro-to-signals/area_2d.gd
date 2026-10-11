extends Area2D

signal destroyTheWorld
var count :=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("mouse_entered", testingFunction)

func testingFunction() -> void:
		print("mouse entered", get_global_mouse_position())
		count +=1
		if count > 3:
			emit_signal("destroyTheWorld")
