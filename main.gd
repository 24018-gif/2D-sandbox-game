extends Node2D
const objectA = preload("res://Items/sand.tscn")
const objectB = preload("res://Items/steel.tscn")
var spawn = objectA
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_sand_panel_gui_input(event: InputEvent) -> void:
	if (event is InputEventMouseButton && event.is_action_released("place")):
		spawn = objectA


func _on_steel_panel_gui_input(event: InputEvent) -> void:
	if (event is InputEventMouseButton && event.is_action_released("place")):
		spawn = objectB


func _on_timer_timeout() -> void:
	if Input.is_action_pressed("place"):
		var tempObject = spawn.instantiate()
		tempObject.global_position=get_global_mouse_position()
		add_child(tempObject)
