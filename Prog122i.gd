extends Control




func _on_btn_calc_pressed():
	for lcv in range (-25, 26):
		var cube = lcv**3
		var cuber = lcv**(1.0/3.0)
		var line = str(lcv) + "     " + str(cuber) + "     " + str(cube) + "     "
		$ItemList.add_item(line)



func _on_btn_clear_pressed():
	$ItemList.clear()


func _on_btn_exit_pressed():
	get_tree().quit()
