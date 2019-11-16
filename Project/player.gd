extends KinematicBody2D
var velocity = Vector2()
const SPEED = 10

func _physics_process(delta):
	if Input.is_action_pressed("ui_cont_left"):
		velocity.x -=SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x +=SPEED
	elif Input.is_action_pressed("ui_contup"):
		velocity.y -=SPEED
	elif Input.is_action_pressed("ui_contdown"):
		velocity.y +=SPEED
	else: 
		velocity.x = 0
		velocity.y = 0
	velocity=move_and_slide(velocity)
	animate()
func animate():
	var anim = "idle"
	if velocity.x != 0 or velocity.y !=0:
		anim="run"
	if velocity.x > 0 or velocity.y > 0:
		$Sprite.flip_h=false
	else:
		$Sprite.flip_h=true
	if $Sprite.animation != anim:
		$Sprite.play(anim)