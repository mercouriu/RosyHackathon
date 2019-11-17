extends KinematicBody2D

var run_speed = 100
var velocity = Vector2.ZERO
var player = preload("res://player.tscn").instance()
onready var player_container = get_node("player_container")
func _ready():
	player_container.add_child(player)
