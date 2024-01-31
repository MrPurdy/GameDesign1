extends Control




func _on_btn_calc_pressed():
	var num1 = int($num1.text)
	var num2 = int($num2.text)
	var num3 = int($num3.text)
	var Ans1 = num1 * num2
	var Ans2 = Ans1 * num3
	$Ans1.text = "Answer: " + str(Ans1)
	$Ans2.text = "Final Answer: " + str(Ans2)
	
	
	

func _on_btn_clear_pressed():
	$Ans1.text = "Answer: "
	$Ans2.text = "Final Answer: "
	$num1.text = ""
	$num2.text = ""
	$num3.text = ""
	
	
	
	

func _on_btn_exit_pressed():
	get_tree().quit()
