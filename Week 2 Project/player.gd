extends MeshInstance3D

var speed = 5
var rotSpeed:float = 90.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var f = Input.get_axis("move_backward","move_forward")
	var d = Input.get_axis("turn_left", "turn_right")
	
	translate(Vector3(0, 0, f * delta * speed))
	rotate_y(d * delta * rotSpeed)
	#position += speed * delta
	#rotate_y(deg_to_rad(rotSpeed) * delta)
	
	pass
