extends KinematicBody2D

var run_speed = 100
var velocity = Vector2.ZERO
var player = preload("res://player.tscn").instance()
onready var player_container = get_node("player_container")
var is_enterede =null
func _ready():
	player_container.add_child(player)
	
func _physics_process(delta):
	velocity = Vector2.ZERO
	velocity = (player.position - position).normalized()*run_speed
	velocity = move_and_slide(velocity)
	$birdan.play("etic")
	if velocity.x < 0:
		$birdan.flip_h=false
	else:
		$birdan.flip_h=true


func _on_Area2D_area_entered(area):
	is_enterede = area


func _on_Area2D_area_exited(area):
	is_enterede = null
