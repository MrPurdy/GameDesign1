extends Node2D



var cursors = 0
var cookies = 0.0
func _on_cookie_clicked_pressed():
	cookies += 1.0
	$BigCookie/lblCookies.text = str(cookies) + " Cookies"

func _on_timer_timeout_funcname() -> void:
	queue_free()

func _on_buy_cursor_pressed():
	cursors += 1
	

