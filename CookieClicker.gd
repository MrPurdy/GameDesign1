extends Node2D


var costC = 15
var cursors = 0
var cookies = 0.0

func _on_cookie_clicked_pressed():
	cookies += 1.0
	$BigCookie/lblCookies.text = str(round(cookies)) + " Cookies"


func _on_buy_cursor_pressed():
	if cookies >= costC:
		cookies -= costC
		cursors += 1
		costC *= 1.15
		$BigCursor/costC.text = "Cost: " + str(round(costC)) + " Cookies"
		$BigCursor/mnyCursors.text = str(cursors)
	if cookies < 0:
		cookies = 0
	
	$Timer.start(1)


func _on_timer_timeout():
	cookies += 0.1
	$BigCookie/lblCookies.text = str(cookies) + " Cookies"
