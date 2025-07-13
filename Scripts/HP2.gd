extends CharacterBody2D
var Health = 100
var THealth = 1
func _process(delta: float) -> void:
	if Health <= 0:
		get_tree().reload_current_scene()
	THealth = Health * 0.1 * 0.1
	get_parent().get_parent().get_parent().get_node("GUI/Base/HP2").scale = Vector2(THealth, 1)
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
