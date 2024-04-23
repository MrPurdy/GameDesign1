extends BaseItem

func _init(): super._init(5)
func _ready(): super._ready()

@onready var aud_player = $AudioStreamPlayer2D
var heart_sound = preload("res://assets/sounds/powerUp.wav")

func interact(player):
	player.pickup_health(value)
	aud_player.stream = heart_sound
	aud_player.play()
	remove()
	
