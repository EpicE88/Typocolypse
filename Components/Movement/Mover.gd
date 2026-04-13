extends Node

@export var speed: float = 300.0
@export var direction: Vector2 = Vector2.ZERO

var _parent: Node2D
var _velocity: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_parent = get_parent() as Node2D
	
	# check if parent is a Node2D 
	if !_parent:
		printerr("Mover not attached to Node2D")
		queue_free()
		
	setup_velocity()

func setup_velocity() -> void:
	_velocity = speed * direction.normalized()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_parent.position += _velocity * delta
	
