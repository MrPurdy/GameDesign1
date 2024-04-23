extends BaseItem

func _init(): super._init(1)
func _ready(): super._ready()

@onready var aud_player = $AudioStreamPlayer2D
var coin_sound = preload("res://assets/sounds/pickupCoin.wav")
func interact(player):
	player.pickup_money(value)
	aud_player.stream = coin_sound
	aud_player.play()
	remove()
