extends Area2D


@export var people_name:String
@export var trans:String
@onready var rich_text_label: RichTextLabel = $RichTextLabel

var can_check = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rich_text_label.visible = false
	rich_text_label.text = people_name

func _process(delta: float) -> void:
	if Input.is_action_just_released("click") and can_check:
		OS.shell_open("%s" %trans)
		
func _on_mouse_entered() -> void:
	rich_text_label.visible = true
	can_check = true
	
func _on_mouse_exited() -> void:
	rich_text_label.visible = false
	can_check = false
	
	
