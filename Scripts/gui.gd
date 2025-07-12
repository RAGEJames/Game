extends Node2D
var p1
var p2
var w1
var w2
func _process(delta: float) -> void:
	if get_parent().get_node("W1").is_visible():
		get_node("Base").position = Vector2(get_parent().get_node("W1/PLAYER/Player").position)
		get_node("ESC").position = Vector2(get_parent().get_node("W1/PLAYER/Player").position)
	if get_parent().get_node("W2").is_visible():
		get_node("Base").position = Vector2(get_parent().get_node("W2/PLAYER/Player").position)
		get_node("ESC").position = Vector2(get_parent().get_node("W2/PLAYER/Player").position)
	if Input.is_action_just_pressed("ui_cancel"):
		if get_node("ESC").visible == false:
			get_node("ESC").visible = true
			get_node("Base").visible = false
			w1 = get_parent().get_node("W1").process_mode
			w2 = get_parent().get_node("W2").process_mode
			get_parent().get_node("W1").process_mode = Node.PROCESS_MODE_DISABLED
			get_parent().get_node("W2").process_mode = Node.PROCESS_MODE_DISABLED
			p1 = get_parent().get_node("W1/PLAYER/Player").process_mode
			p2 = get_parent().get_node("W2/PLAYER/Player").process_mode
			get_parent().get_node("W1/PLAYER/Player").process_mode = Node.PROCESS_MODE_DISABLED
			get_parent().get_node("W2/PLAYER/Player").process_mode = Node.PROCESS_MODE_DISABLED
		else:
			get_node("ESC").visible = false
			get_node("Base").visible = true
			get_parent().get_node("W1").process_mode = w1
			get_parent().get_node("W2").process_mode = w2
			get_parent().get_node("W1/PLAYER/Player").process_mode = p1
			get_parent().get_node("W2/PLAYER/Player").process_mode = p2


func _on_button_pressed() -> void:
	if get_node("ESC").visible == false:
		get_node("ESC").visible = true
		get_node("Base").visible = false
		w1 = get_parent().get_node("W1").process_mode
		w2 = get_parent().get_node("W2").process_mode
		get_parent().get_node("W1").process_mode = Node.PROCESS_MODE_DISABLED
		get_parent().get_node("W2").process_mode = Node.PROCESS_MODE_DISABLED
		p1 = get_parent().get_node("W1/PLAYER/Player").process_mode
		p2 = get_parent().get_node("W2/PLAYER/Player").process_mode
		get_parent().get_node("W1/PLAYER/Player").process_mode = Node.PROCESS_MODE_DISABLED
		get_parent().get_node("W2/PLAYER/Player").process_mode = Node.PROCESS_MODE_DISABLED
	else:
		get_node("ESC").visible = false
		get_node("Base").visible = true
		get_parent().get_node("W1").process_mode = w1
		get_parent().get_node("W2").process_mode = w2
		get_parent().get_node("W1/PLAYER/Player").process_mode = p1
		get_parent().get_node("W2/PLAYER/Player").process_mode = p2
