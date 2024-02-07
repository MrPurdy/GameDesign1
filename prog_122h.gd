extends Control




func _on_btn_calc_pressed():
	for lcv in range (1, 21):
		var lcvsquared = lcv**2;
		var lcvsqrt = sqrt(lcv);
		var cube = lcv**3
		var ftrt = lcv**(1.0/4.0);
		var line = str(lcv) + "     " + str(lcvsquared) + "     " + str(lcvsqrt) + "     " + str(cube) + "     " + str(ftrt)
		$ItemList.add_item(line)

func _on_btn_clear_pressed():
	$ItemList.clear()


func _on_btn_exit_pressed():
	get_tree().quit()
