extends Label

func _input(event):
	if event is InputEventKey:
		if event.pressed and not event.echo:
			var prompt = OS.get_scancode_string(event.get_scancode_with_modifiers())
			print(prompt)
			self.text = prompt
