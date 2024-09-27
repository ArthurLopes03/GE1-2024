extends Node3D

@export var height = 5
@export var stack_Scene:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for stackHeight in range(height):
		var stack = stack_Scene.instantiate()
		var rng = RandomNumberGenerator.new()
		var pos = Vector3(rng.randf_range(-0.3, 0.3), stackHeight, 0)
		
		var mat = StandardMaterial3D.new()
		
		mat.albedo_color = Color(100, 100, 100)
		
		stack.Node3D.MeshInstance3D.material = mat
		stack.position = pos
		add_child(stack)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
