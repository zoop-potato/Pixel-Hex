extends Camera2D

var total_time = 0.0
@export var circle_scale = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	total_time += delta
	self.position.x = sin(total_time)
	self.position.y = cos(total_time)
	self.position *= circle_scale
