extends Node2D


@export var speed: float = 300.0
@export var input_left: String = "left"
@export var input_right: String = "right"

var _direction: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_direction = Vector2(Input.get_axis(input_left, input_right), 0)
	
	
	# Move the parent
	position += _direction * speed * delta
