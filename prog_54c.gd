extends Control




func _on_btn_calc_pressed():
	var rad = int($txtRad.text) 
	var pi = 3.14159
	var cir = 2 * pi * rad
	var area = pi * rad * rad
	$lblArea.text = "Area: " + str(area)
	$lblCir.text = "Circumference: " + str(cir)
	
	
func _on_btn_clear_pressed():
	$lblArea.text = ""
	$lblCir.text = ""
	
	
func _on_btn_exit_pressed():
	get_tree().quit()
