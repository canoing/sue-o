extends Node


# Called when the node enters the scene tree for the first time.


func _on_player_touch(area):
	#la funcion esta  en touchs
	if area != null:
		area.inspect()
	 # Replace with function body.
