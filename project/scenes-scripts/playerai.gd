extends KinematicBody2D

var speed = 500
var jump_speed = -1300
var gravity = 4000
var friction = 0.1
var acceleration = 0.25
var velocity = Vector2.ZERO
var jump = 0


func _physics_process(delta):
	jump_speed = -1300
	gravity = 4000
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if jump == 1:
		jump = 0
		if is_on_floor():
			velocity.y = jump_speed
			get_parent().get_node("jump").play()


func _on_Area2D_area_entered(area):
	jump = 1
