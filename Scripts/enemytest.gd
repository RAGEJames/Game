extends CharacterBody2D
var switch = 0
var direction = -1
var speed = 150
var delay = 0
var jump = -600
func _process(delta: float) -> void:
		if abs(position.x) - abs(get_tree().root.get_child(0).get_node("W1/PLAYER/Player").position.x) >= 0:
			direction = -1
		else:
			direction = 1
#		if speed <= 100:
#			speed = 100
#		if speed >= 300:
#			speed = 300
func _physics_process(delta: float) -> void:
	velocity.x = speed * direction
#	if is_on_wall() and delay <= 0:
#		direction *= -1
#		print(direction)
#		delay = 35
#	if randf() >= 0.98:
#		switch += 1
#		if switch >= 2 and delay <= 0:
#			switch = 0
#			direction *= -1
#			print(direction)
	if not is_on_floor():
		velocity += get_gravity() * delta
	move_and_slide()
	if is_on_wall() and delay <= 0:
		delay = 30
		velocity.y += jump
	delay -= 1
