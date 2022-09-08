extends RichTextLabel


func _input(event):
	set_text("Your mouse position is\n" + str(event.get_action_strength("ch_throttle")))

#func _process(delta):
#	set_text("Your mouse position is " + str(get_local_mouse_position()))
