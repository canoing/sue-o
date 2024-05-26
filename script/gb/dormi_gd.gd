extends Node
var tempo = 0.02
var dormi = 0
var desperta = false
var viaje = false
var castigo = load("res://tscn/escenas/castigo/castigo.tscn")
func _process(delta):
	# se dormira lenta mente hasta llegar a 0
	if dormi <= 1 and desperta == false:
		
		dormi += tempo * delta
		if dormi >= 1:
			desperta = true
	if dormi >= 0 and desperta == true:
		#se va a reinia la cuenta 
		dormi = 0
		desperta = false
		viaje = true

		
	

	
