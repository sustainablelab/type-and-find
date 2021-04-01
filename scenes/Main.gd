extends Node2D

func _input(event):
	if event is InputEventKey:
		if event.pressed and not event.echo:
			print(OS.get_scancode_string(event.get_scancode_with_modifiers()))
