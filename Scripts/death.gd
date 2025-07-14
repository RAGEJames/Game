extends Node2D
func death() -> void:
	get_tree().reload_current_scene()
