extends Control




func _on_btn_calc_pressed():
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var num3 = int($LineEdit3.text)
	var num4 = int($LineEdit4.text)
	var sum = num1 + num2 + num3 + num4
	var ave = sum / 4
	$lblSum.text = "Sum " + str(sum)
	$lblAve.text = "Average " + str(ave)
func _on_btn_clear_pressed():
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$LineEdit3.text = ""
	$LineEdit4.text = ""
	$lblSum.text = ""
	$lblAve.text = ""


func _on_btn_exit_pressed():
	get_tree().quit()
