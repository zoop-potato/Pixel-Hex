extends Node2D

var grass_hex_scene = preload("res://grass hex.tscn")
var stone_hex_scene = preload("res://stone_hex.tscn")

var x_offset = 188
var y_offset = 64

# Called at an early part of the init process
func _init():
	# loop to make a 10 x 10 grid
	for y in 10: 
		for x in 10:
			# calculate pixel position
			var x_pos = x * x_offset
			var y_pos = (y * y_offset * 2) + (x * -y_offset)
			# instance new node
			var hex = grass_hex_scene.instantiate()
			# flip coin if stone or grass
#			if randf() > .60:
#				hex = stone_hex_scene.instantiate()
			#   set values
			hex.name = "Hex %1d, %1d" % [x, y]
			hex.position.x = x_pos
			hex.position.y = y_pos
			hex.z_index = -x + (y * 2) + self.z_index
			# flip coin to keep
#			if randf() > .4:
			add_child(hex)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
