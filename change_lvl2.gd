extends Area2D


@export var next_level = ""

func _on_body_entered(body):
	if body.is_in_group("Player"):
		var lvl2 = "res://" + next_level + ""
		get_tree().change_scene_to_file(lvl2)
