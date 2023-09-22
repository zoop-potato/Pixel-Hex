extends Camera2D

@export var drag_scale = 2.0

var left_dragging = false

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_input(event):
	if event is InputEventMouseButton: 
		# update left_dragging state
		if event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
			left_dragging = true
		else:
			left_dragging = false
		# check for zoom input
		if event.is_pressed() and event.button_index == MOUSE_BUTTON_WHEEL_UP:
			zoom_in()
		elif event.is_pressed() and event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			zoom_out()
	elif event is InputEventMouseMotion and left_dragging:
		position += event.relative * -(drag_scale * (1 / zoom.x))

func zoom_in():
	if zoom.x <= 0.25:
		zoom *= 2
	else:
		zoom += Vector2(0.25, 0.25)

func zoom_out():
	if zoom.x <= 0.25:
		zoom /= 2
	else:
		zoom -= Vector2(0.25, 0.25)
