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
		get_tree().root.get_child(0).get_node("Death").death()
	THealth = Health * 0.1 * 0.1 / Health_mult
	
	get_parent().get_parent().get_parent().get_node("GUI/Base/HP1").scale = Vector2(THealth, 1)
func dmg(amount) -> void:
	Health -= amount
func hp(amount) -> void:
	Health += amount
