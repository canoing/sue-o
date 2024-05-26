extends Area2D
@export var ID_toush = "" #la ID del objeto 
var interation = InteracionGb

func  inspect():
	#cambiara despues 
	#aqui va solo la interaciones con lam tecla F la interracion esta en 
	#interacion
	if ID_toush == "door_1":
		get_tree().change_scene_to_packed(interation.input.door_1)
	if ID_toush == "door_3":
		get_tree().change_scene_to_packed(interation.input.door_3)
		
	if ID_toush == "caffe":
		interation.input.caffe = true
	#cuarto 2
	if ID_toush == "door_2":
		OS.alert("en contrucion")
		
	
