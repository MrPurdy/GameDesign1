extends Node2D


func _on_buyrebirth_pressed():
	get_tree().change_scene_to_file("res://cookie_tapper_2.tscn")
	pass


var costG = 100
var costC = 15
var grandmas= 0
var cursors = 0
var cookies = 0.0

func _on_cookie_clicked_pressed():
	cookies += 1.0
	if cursors > 0:
		cookies += 1
	if grandmas > 0:
		cookies += 5
	$BigCookie/lblCookies.text = str(round(cookies)) + " Cookies"
	if cookies >= 15:
		$BigCursor.visible = true
	if cookies >= 100:
		$Grandma.visible = true

func _on_buy_cursor_pressed():
	if cookies >= costC:
		cookies -= costC
		cursors += 1
		costC *= 1.15
		$BigCursor/costC.text = "Cost: " + str(round(costC)) + " Cookies"
		$BigCursor.visible = false
		
		
	if cookies < 0:
		cookies = 0
		


func _on_buy_grandmas_pressed():
	if cookies >= costG:
		cookies -= costG
		grandmas += 1
		costG *= 1.15
		$Grandma/costG.text = "Cost: " + str(round(costG)) + " Cookies"
		$BigCursor.visible = false
		
	if cookies < 0:
		cookies = 0
		


func _on_audio_stream_player_finished():
	$AudioStreamPlayer.play()
