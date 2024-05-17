extends Sprite2D


@onready var dormi = get_node("ColorRect")
func _ready():
	pass # Replace with function body.



func _process(delta):
	if dormi.color.a <= 1:
		dormi.color.a += 0.025 * delta
		
		
	if dormi.color.a >= 1:
		#temporal 
		get_tree().reload_current_scene()
	
