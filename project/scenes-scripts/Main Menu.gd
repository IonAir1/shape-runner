extends Node2D


func _ready():
	if Global.first == 1:
		Global.first = 0
	else:
		get_node("lost").play()
	if Global.score > Global.bestscore:
		Global.bestscore = Global.score
	get_node("UI/VBoxContainer/score").text = "SCORE      " + str(Global.score)
	get_node("UI/VBoxContainer/best").text = "BEST SCORE      " + str(Global.bestscore)


func _on_play_pressed():
	get_tree().change_scene("res://scenes-scripts/main.tscn")

