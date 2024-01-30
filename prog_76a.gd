extends Control




func _on_btn_calc_pressed():
	var num1 = int($num1.text)
	var num2 = int($num2.text)
	var num3 = int($num3.text)
	var Ans1 = num1 * num2
	var Ans2 = Ans1 * num3
