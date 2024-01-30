extends Control


func _on_btn_calc_pressed():
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var Sum = num1 + num2
	var Diff = num1 - num2
	var Pro = num1 * num2
	var Ave = num1 + num2 / 2
	var Abs = abs(Diff)
	var Max = 0
	var Min = 0
	if num1 > num2:
		Max = num1
	else: 
		Max = num2
		
	if Max == num1:
		Min = num2
	else:
		Min = num1
		
	$Label.text = "Sum " + str(Sum) + \
				"\nDifference: " + str(Diff) + \
				"\nAbs. Distance: " + str(Abs) + \
				"\nMax: " + str(Max) + \
				"\nMin: " + str(Min)
	
	
	
func _on_btn_clear_pressed():
	$Label.text = ""
	

func _on_btn_exit_pressed():
	get_tree().quit()
