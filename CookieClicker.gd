extends Node2D


var costC = 15
var cursors = 0
var cookies = 0.0
func _on_cookie_clicked_pressed():
	cookies += 1.0
	$BigCookie/lblCookies.text = str(cookies) + " Cookies"


func _on_buy_cursor_pressed():
	costC * 1.5
	$BigCursor/BuyCursor.text = "Cost: " + str(costC) + " Cookies"
	if cookies >= costC:
		cursors += 1
		$BigCursor/mnyCursors.text = str(cursors)
	cookies - costC
	$Timer.start(1)


func _on_timer_timeout():
	cookies += 0.1
	$BigCookie/lblCookies.text = str(cookies) + " Cookies"
