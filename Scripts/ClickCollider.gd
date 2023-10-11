extends Area3D

signal cell_pressed(pos)
var clickable = true

func _on_input_event(camera, event, clickPosition, normal, shape_idx):
	if clickable and event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed == true:
		get_tree().call_group("CellClicked", "on_cell_pressed", position)
		clickable = false
