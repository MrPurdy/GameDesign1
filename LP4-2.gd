extends Control




func _on_btn_calc_pressed():
	var weight = int($lineWeight.text)
	var length = int($lineLength.text)
	var height = int($lineHeight.text)
	var width = int($lineWidth.text)
	
	if  weight > 0 and weight <= 27:
		weight 
	else:
		$lblOutkg.text = "Package is too heavy"
		return
	
	if  width > 0 and width <= 100:
		length 
	else:
		$lblOutln.text = "Package is too large"
		return
	
	if  width > 0 and width <= 100:
		width 
	else:
		$lblOutwi.text = "Package is to large"
		return
		
	if  height > 0 and height <= 100:
		height 
	else:
		$lblOuthe.text = "Package is too large"
		return
