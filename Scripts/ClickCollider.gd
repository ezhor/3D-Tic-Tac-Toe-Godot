extends Area3D

var clickable = true
var isCross = false

func _on_input_event(camera, event, clickPosition, normal, shape_idx):
	if clickable and event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed == true:
		clickable = false
		isCross = GameController.OnCellPressed(position)
