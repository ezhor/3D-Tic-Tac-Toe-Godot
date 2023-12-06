extends Node3D

var cross = preload("res://Nodes/Cross.tscn")
var circle = preload("res://Nodes/Circle.tscn")
var crossTurn = true

func OnCellPressed(cellPosition: Vector3) -> bool:
	var instance = cross.instantiate() if crossTurn else circle.instantiate()
	instance.position = cellPosition
	add_child(instance)
	crossTurn = !crossTurn
	return !crossTurn;
