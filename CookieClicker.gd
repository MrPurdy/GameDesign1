extends Node2D



func _on_buyrebirth_pressed():
	if cookies >= 1000000:
		get_tree().change_scene_to_file("res://cookie_tapper_2.tscn")
	
	
var costPM = 2100000000000000
var costAM = 170000000000000
var costTM = 14000000000000
var costP = 1000000000000
var costA = 75000000000
var costS = 5100000000
var costWT = 330000000
var costT = 20000000
var costB = 1400000
var costFA = 130000
var costM = 12000
var costF = 1100
var costG = 100
var costC = 15
var prisms = 0
var antimatters = 0
var timemachines = 0
var portals = 0
var alchemylabs = 0
var shipments = 0
var wizardtowers = 0
var temples = 0
var banks = 0
var factorys = 0
var mines = 0
var farms = 0
var grandmas = 0
var cursors = 0
var cookies = 0
var rebirths = 1

func _click():
	call_deferred("do_a_left_click")
	
func do_a_left_click():
	var a = InputEventMouseButton.new()
	a.set_button_index(1)
	a.position = Vector2(102.5, 150)
	a.pressed = true
	Input.parse_input_event(a)
	

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
	if wizardtowers > 0:
		cookies += 440000
	if shipments > 0:
		cookies += 2600000
	if alchemylabs > 0:
		cookies += 16000000
	if portals > 0:
		cookies += 100000000
	if timemachines > 0:
		cookies += 650000000
	if antimatters > 0:
		cookies += 4300000000
	if prisms > 0:
		cookies += 29000000000
	
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
	if cookies >= 330000000:
		$WTower.visible = true
	if wizardtowers >= 1:
		$WTower.visible = false
	if cookies >= 5100000000:
		$Shipment.visible = true
	if shipments >= 1:
		$Shipment.visible = false
	if cookies >= 75000000000:
		$Alchemy.visible = true
	if alchemylabs >= 1:
		$Alchemy.visible = false
	if cookies >= 100000000000:
		$Portal.visible = true
	if portals >= 1:
		$Portal.visible = false
	if cookies >= 1400000000000:
		$TimeMachine.visible = true
	if timemachines >= 1:
		$TimeMachine.visible = false
	if cookies >= 17000000000000:
		$AntiMatter.visible = true
	if antimatters >= 1:
		$AntiMatter.visible = false
	if cookies >= 210000000000000:
		$Prism.visible = true
	if prisms >= 1:
		$Prism.visible = false
	
	

func _on_buy_cursor_pressed():
	if cookies >= costC:
		cookies -= costC
		cursors += 1
		$BigCursor/costC.text = "Cost: " + str(costC)
		$BigCursor.visible = false
	if cookies < 0:
		cookies = 0
		


func _on_buy_grandmas_pressed():
	if cookies >= costG:
		cookies -= costG
		grandmas += 1
		$Grandma/costG.text = "Cost: " + str(costG)
		$Grandma.visible = false
	if cookies < 0:
		cookies = 0
		
		
func _on_buy_farm_pressed():
	if cookies >= costF:
		cookies -= costF
		farms += 1
		$Farm/costF.text = "Cost: " + str(costF)
		$Farm.visible = false
	if cookies < 0:
		cookies = 0

func _on_buy_mine_pressed():
	if cookies >= costM:
		cookies -= costM
		mines += 1
		$Mine/costM.text = "Cost: " + str(costC)
		$Mine.visible = false
	if cookies < 0:
		cookies = 0

func _on_buy_factory_pressed():
	if cookies >= costFA:
		cookies -= costFA
		factorys += 1
		$Factory/costFA.text = "Cost: " + str(costFA)
		$Factory.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_bank_pressed():
	if cookies >= costB:
		cookies -= costB
		banks += 1
		$Bank/costB.text = "Cost: " + str(costB)
		$Bank.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_temple_pressed():
	if cookies >= costT:
		cookies -= costT
		temples += 1
		$Temple/costT.text = "Cost: " + str(costT)
		$Temple.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_w_tower_pressed():
	if cookies >= costWT:
		cookies -= costWT
		wizardtowers += 1
		$WTower/costWT.text = "Cost: " + str(costWT)
		$WTower.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_shipment_pressed():
	if cookies >= costS:
		cookies -= costS
		shipments += 1
		$Shipment/costS.text = "Cost: " + str(costS)
		$Shipment.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_alchemy_pressed():
	if cookies >= costA:
		cookies -= costA
		alchemylabs += 1
		$Alchemy/costA.text = "Cost: " + str(costA)
		$Alchemy.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_portal_pressed():
	if cookies >= costP:
		cookies -= costP
		portals += 1
		$Portal/costP.text = "Cost: " + str(costP)
		$Portal/costP.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_time_machine_pressed():
	if cookies >= costTM:
		cookies -= costTM
		timemachines += 1
		$TimeMachine/costTM.text = "Cost: " + str(costTM)
		$TimeMachine.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_anti_matter_pressed():
	if cookies >= costAM:
		cookies -= costAM
		antimatters += 1
		$AntiMatter/costAM.text = "Cost: " + str(costAM)
		$AntiMatter.visible = false
	if cookies < 0:
		cookies = 0


func _on_buy_prism_pressed():
	if cookies >= costPM:
		cookies -= costPM
		prisms += 1
		$Prism/costPM.text = "Cost: " + str(costPM)
		$Prism.visible = false
	if cookies < 0:
		cookies = 0
		
func _on_audio_stream_player_finished():
	$AudioStreamPlayer.play()

