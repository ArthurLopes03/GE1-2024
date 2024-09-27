extends Node3D

@export var height = 5
@export var stack_Scene:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for stackHeight in range(height):
		var stack = stack_Scene.instantiate()
		var pos = Vector3(0, stackHeight, 0)
		stack.position = pos
		add_child(stack)
	pass
