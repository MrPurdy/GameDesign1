extends Control




func _on_btn_calc_pressed():
	var eggs = int($LineEdit.text)
	var price = 0.0
	var cost = 0.0
	if  eggs > 0 and eggs <= 4:
		price = 0.50
	elif  eggs > 4 and eggs <= 6:
		price = 0.45
	elif  eggs > 6 and eggs <= 11:
		price = 0.40
	elif  eggs >= 11:
		price = 0.35
	else:
		$lblOut.text = "Invalid # of Eggs"
		return
	cost = price * eggs
	$lblOut.text = "Price per dozen: $" + str(price) + \
				"\nTotal cost: $%.2f" % cost
