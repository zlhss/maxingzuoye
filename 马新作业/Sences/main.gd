extends Node2D

class_name parent
signal hide

func _on_hide(trans:Node2D) -> void:
	for x in range(1,get_child_count()):
		get_child(x).visible = false
	
	
