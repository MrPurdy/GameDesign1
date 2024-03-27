extends CanvasLayer

@onready var player = get_tree().get_first_node_in_group("Player")
@onready var hearts = $PlayerCoins/Coins

const COIN_ROW_SIZE = 10
const COIN_OFFSET = 16

func create_coin():
	var n_coin = Sprite2D.new()
	n_coin.texture = hearts.texture
	n_coin.hframes = hearts.hframes
	n_coin.vframes = hearts.vframes
	n_coin.frame = 8
	coins.add_child(n_coin)


func draw_coins():
	for coin in coins.get_children():
		coins.remove_child(coin)
	for i in range(int(player.data.max_money) / 10):
		create_coin()  # 1 heart per 20 hp

func _ready():
	draw_coins()

func _process(delta):
	var p_coin = player.data.money
	var full_hearts = floor(p_health / 20)
	var remainder = int(p_health) % 20
	
	for coin in coins.get_children():
		var index = coin.get_index()
		var x = (index % COIN_ROW_SIZE) * COIN_OFFSET
		var y = (index / COIN_ROW_SIZE) * COIN_OFFSET
		coin.position = Vector2(x, y)
		
		# Frame 8 empty, 7 1/4, 6 half, 5 3/4, 4 full
		if index > full_hearts:
			heart.frame = 8
		elif index == full_hearts:
			heart.frame = 8 - int(remainder / 5)
		elif index < full_hearts:
			heart.frame = 4
	pass
