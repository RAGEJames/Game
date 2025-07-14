extends Node


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().root.get_child(0).get_node("Death").death()
	
