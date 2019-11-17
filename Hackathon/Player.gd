extends KinematicBody2D

export (int) var speed = 200
var velocity = Vector2()

var form = 0
var rl = 0
var attack = 0
var move = 0
   

func _process(delta):

    if Input.is_action_pressed("ui_right"):
        
        $AnimatedSprite.flip_h = false
        $AnimatedSprite2.flip_h = false
    
    elif Input.is_action_pressed("ui_left"):
        
        $AnimatedSprite2.flip_h = true
        $AnimatedSprite.flip_h = true

    if form == 0 and move == 1:
        $AnimatedSprite.play("Move")
    elif form == 0 and move == 0:
        $AnimatedSprite.play("Stay")
    elif form == 1 and move == 1:
        $AnimatedSprite.play("MoveW")
    elif form == 1 and move == 0:
        $AnimatedSprite.play("StayW")
    
   

    if attack == 0 and form == 0:
        $AnimatedSprite2.play("Chill")
    elif attack == 0 and form == 1:
        $AnimatedSprite2.play("ChillW")

    if Input.is_action_just_released("ui_accept") and form == 0:
        form = 1
    elif Input.is_action_just_released("ui_accept") and form == 1:
        form = 0







func get_input():
    velocity = Vector2()
    if Input.is_action_pressed('ui_right'):
        velocity.x += 1
        move = 1
    if Input.is_action_pressed('ui_left'):
        velocity.x -= 1
        move = 1
    if Input.is_action_pressed('ui_down'):
        velocity.y += 1
        move = 1
    if Input.is_action_pressed('ui_up'):
        velocity.y -= 1
        move = 1
    else: move = 0
    velocity = velocity.normalized() * speed

func _physics_process(delta):
    get_input()
    velocity = move_and_slide(velocity)


