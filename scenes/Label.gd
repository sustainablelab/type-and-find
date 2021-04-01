extends Label
func _ready():
	self.text = ""
func _input(event):
	if event is InputEventKey:
		if event.pressed and not event.echo:
			var prompt = OS.get_scancode_string(event.get_scancode_with_modifiers())
			if prompt == "BackSpace":
				print ("Delete")
				self.text.erase(0, 1)
			else:
				print (prompt)
				self.text += prompt
