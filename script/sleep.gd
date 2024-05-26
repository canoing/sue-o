extends Sprite2D

#aqui pasa la cosa de sueños eso
@onready  var dormi = get_node("ColorRect")
var sleep = Dormi




func _process(delta):
	# se va durmirdo
	dormi.color.a = sleep.dormi
		
		
		
	if sleep.viaje == true:
		# sera una habitacion por dormise apropocito xd 
		get_tree().change_scene_to_packed(sleep.castigo)
		dormi.color.a = 0
		
		
		
