extends Control




func _on_btn_calc_pressed():
	for lcv in range (-25, 26):
		var cube = lcv**3
		var cuber = lcv**3 
		var line = str(lcv) + "     " + str(cube) + "     " + str(cuber) + "     "
		$ItemList.add_item(line)

