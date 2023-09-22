extends Node2D

@export var layer_count = 8
var hex_layer_scene = preload("res://hex_layer.tscn")
var y_offset = 64
var z_layer_offset = 2
var darkness_offset = 0.15

# Called at an early part of the init process
func _init():
	# loop to init each layer
	for i in layer_count:
		# init a layer node
		var layer = hex_layer_scene.instantiate()
		# calculate how far from the chunk node this layer needs to be
		# and set position of layer node
		layer.position.y = i * y_offset
		# set z layer one below the layer above
		layer.z_index = self.z_index - (z_layer_offset * i)
		# darken the lower layers
		var color_val = 1.0 - (darkness_offset * i)
		layer.modulate = Color(color_val, color_val, color_val, 1)
		# add layer node to chunk node
		add_child(layer)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
