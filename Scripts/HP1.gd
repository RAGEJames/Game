extends CharacterBody2D
var Health = 100
var THealth = 1
var Health_mult = 1
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_down"):
		Health_mult = 2
		Health *= Health_mult
	if Input.is_action_just_released("ui_down"):
		Health /= Health_mult
		Health_mult = 1
func _process(delta: float) -> void:
	if Health > Health_mult * 100:
		Health = Health_mult * 100
		print("heker")
	if Health <= 0:
		death()
	THealth = Health * 0.1 * 0.1 / Health_mult
	
	get_parent().get_parent().get_parent().get_node("GUI/Base/HP1").scale = Vector2(THealth, 1)
func dmg1() -> void:
	Health -= 1
func dmg2() -> void:
	Health -= 2
func dmg3() -> void:
	Health -= 3
func dmg4() -> void:
	Health -= 4
func dmg5() -> void:
	Health -= 5
func dmg6() -> void:
	Health -= 6
func dmg7() -> void:
	Health -= 7
func dmg8() -> void:
	Health -= 8
func dmg9() -> void:
	Health -= 9
func dmg10() -> void:
	Health -= 10
func dmg20() -> void:
	Health -= 20
func dmg30() -> void:
	Health -= 30
func dmg40() -> void:
	Health -= 40
func dmg50() -> void:
	Health -= 50
func dmg60() -> void:
	Health -= 60
func dmg70() -> void:
	Health -= 70
func dmg80() -> void:
	Health -= 80
func dmg90() -> void:
	Health -= 90
func hp1() -> void:
	Health += 1
func hp2() -> void:
	Health += 2
func hp3() -> void:
	Health += 3
func hp4() -> void:
	Health += 4
func hp5() -> void:
	Health += 5
func hp6() -> void:
	Health += 6
func hp7() -> void:
	Health += 7
func hp8() -> void:
	Health += 8
func hp9() -> void:
	Health += 9
func hp10() -> void:
	Health += 10
func hp20() -> void:
	Health += 20
func hp30() -> void:
	Health += 30
func hp40() -> void:
	Health += 40
func hp50() -> void:
	Health += 50
func hp60() -> void:
	Health += 60
func hp70() -> void:
	Health += 70
func hp80() -> void:
	Health += 80
func hp90() -> void:
	Health += 90
