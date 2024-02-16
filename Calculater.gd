extends Control




func _on_btn_add_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var add = num1 + num2
	$txtResult.text = " " + str(add)
	$lblOperation.text = "Operation: +"


func _on_btn_sub_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var sub = num1 - num2
	$txtResult.text = " " + str(sub)
	$lblOperation.text = "Operation: -"


func _on_btn_mul_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var mul = num1 * num2
	$txtResult.text = " " + str(mul)
	$lblOperation.text = "Operation: *"


func _on_btn_pow_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var pow = num1**num2
	$txtResult.text = " " + str(pow)
	$lblOperation.text = "Operation: **"


func _on_btn_div_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var div = num1 / num2
	$txtResult.text = " " + str(div)
	$lblOperation.text = "Operation: /"


func _on_btn_mod_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var mod = num1 % num2
	$txtResult.text = " " + str(mod)
	$lblOperation.text = "Operation: MOD"


func _on_btn_clear_pressed():
	$txtResult.text = ""
	$lblOperation.text = "Operation: "
	$txtNum1.text = ""
	$txtNum2.text = ""


func _on_btn_exit_pressed():
	get_tree().quit()
