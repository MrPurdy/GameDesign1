extends Control




func _on_btn_calc_pressed():
	for num in range (1, 10):
		num = num + 1
		var num2 = num + 1
		var num3 = num * 2
		var num4 = num ** 2
		var line = str(num) + "     " + str(num2) + "     " + str(num3) + "     " + str(num4)
		$ItemList.add_item(line)
	
	
	
	
func _on_btn_clear_pressed():
	$ItemList.clear()
	
	
	
	
func _on_btn_exit_pressed():
	get_tree().quit()
