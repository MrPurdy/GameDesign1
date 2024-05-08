extends Node2D


func _on_buyrebirth_pressed():
	get_tree().change_scene_to_file("res://cookie_tapper_2.tscn")
	pass
var costT = 20000000
var costB = 1400000
var costFA = 130000
var costM = 12000
var costF = 1100
var costG = 100
var costC = 15
var temples = 0
var banks = 0
var factorys = 0
var mines = 0
var farms = 0
var grandmas = 0
var cursors = 0
var cookies = 1300000

func _on_cookie_clicked_pressed():
	cookies += 1.0
	if cursors > 0:
		cookies += 1
	if grandmas > 0:
		cookies += 10
	if farms > 0:
		cookies += 80
	if mines > 0:
		cookies += 470
	if factorys > 0:
		cookies += 2600
	if banks > 0:
		cookies += 14000
	if temples > 0:
		cookies += 78000
	
	$BigCookie/lblCookies.text = str(round(cookies)) + " Cookies"
	if cookies >= 15:
		$BigCursor.visible = true
	if cursors >= 1:
		$BigCursor.visible = false
	if cookies >= 100:
		$Grandma.visible = true
	if grandmas >= 1:
		$Grandma.visible = false
	if cookies >= 1100:
		$Farm.visible = true
	if farms >= 1:
		$Farm.visible = false
	if cookies >= 12000:
		$Mine.visible = true
	if mines >= 1:
		$Mine.visible = false
	if cookies >= 130000:
		$Factory.visible = true
	if factorys >= 1:
		$Factory.visible = false
	if cookies >= 1400000:
		$Bank.visible = true
	if banks >= 1:
		$Bank.visible = false
	if cookies >= 20000000:
		$Temple.visible = true
	if temples >= 1:
		$Temple.visible = false
	

func _on_buy_cursor_pressed():
	if cookies >= costC:
		cookies -= costC
		cursors += 1
		$BigCursor/costC.text = "Cost: " + str(round(costC)) + " Cookies"
		$BigCursor.visible = false
	if cookies < 0:
		cookies = 0
		


func _on_buy_grandmas_pressed():
	if cookies >= costG:
		cookies -= costG
		grandmas += 1
		$Grandma/costG.text = "Cost: " + str(round(costG)) + " Cookies"
		$Grandma.visible = false
	if cookies < 0:
		cookies = 0
		
		
func _on_buy_farm_pressed():
	if cookies >= costF:
		cookies -= costF
		farms += 1
		$Farm/costF.text = "Cost: " + str(round(costF)) + " Cookies"
		$Farm.visible = false
	if cookies < 0:
		cookies = 0

func _on_buy_mine_pressed():
	if cookies >= costM:
		cookies -= costM
		mines += 1
		$Mine/costM.text = "Cost: " + str(round(costM)) + " Cookies"
		$Mine.visible = false
	if cookies < 0:
		cookies = 0
func _on_audio_stream_player_finished():
	$AudioStreamPlayer.play()


func _on_buy_factory_pressed():
	if cookies >= costFA:
		cookies -= costFA
		factorys += 1
		$Factory/costFA.text = "Cost: " + str(round(costFA)) + " Cookies"
		$Factory.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_bank_pressed():
	if cookies >= costB:
		cookies -= costB
		banks += 1
		$Bank/costB.text = "Cost: " + str(round(costB)) + " Cookies"
		$Bank.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_temple_pressed():
	if cookies >= costT:
		cookies -= costT
		temples += 1
		$Temple/costT.text = "Cost: " + str(round(costT)) + " Cookies"
		$Temple.visible = false
	if cookies < 0:
		cookies = 0
