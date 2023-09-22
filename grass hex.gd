extends Node2D

var top_side_hovered = false
var left_side_hovered = false
var middle_side_hovered = false
var right_side_hovered = false
var hovered = false
var sprite
var highlight

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = get_node("Grass sprite")
	highlight = get_node("Highlight")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	hovered = top_side_hovered or left_side_hovered or middle_side_hovered or right_side_hovered
	
#	if hovered and sprite.visible:
#		sprite.hide()
#	elif !hovered and !sprite.visible:
#		sprite.show()
	
	if hovered and !highlight.visible:
		highlight.show()
	elif !hovered and highlight.visible:
		highlight.hide()


func _on_top_2d_area_mouse_entered():
	top_side_hovered = true


func _on_top_2d_area_mouse_exited():
	top_side_hovered = false


func _on_left_2d_area_mouse_entered():
	left_side_hovered = true


func _on_left_2d_area_mouse_exited():
	left_side_hovered = false


func _on_middle_2d_area_mouse_entered():
	middle_side_hovered = true


func _on_middle_2d_area_mouse_exited():
	middle_side_hovered = false


func _on_right_2d_area_mouse_entered():
	right_side_hovered = true


func _on_right_2d_area_mouse_exited():
	right_side_hovered = false
