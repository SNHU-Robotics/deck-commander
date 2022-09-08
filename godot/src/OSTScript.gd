extends RichTextLabel

func _process(delta):
	set_text("Your mouse position is " + str(get_local_mouse_position()))
