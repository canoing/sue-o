extends Area2D
@export var ID_toush = ""
var interation = InteracionGb
func  inspect():
	if ID_toush == "door_1":
		get_tree().change_scene_to_packed(interation.input.door_1)
	if ID_toush == "door_3":
		get_tree().change_scene_to_packed(interation.input.door_3)
		
	if ID_toush == "cano":
		OS.alert(interation.input.cano)
	#cuarto 2
	if ID_toush == "door_2":
		OS.alert("en contrucion")
		
	
