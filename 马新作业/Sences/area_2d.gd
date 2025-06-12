extends Area2D

@export var photo:Sprite2D

func _on_mouse_entered() -> void:
	photo.visible = true

func _on_mouse_exited() -> void:
	photo.visible = false
