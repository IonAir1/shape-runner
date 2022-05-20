extends Node


var state = 0 #current game playing
var switch_to_b = false #signal to switch to game b
var switch_to_c = false #signal to switch to game c
var switch_to_a = false #signal to switch to game a
var switch_to_d = false #signal to switch to game d
var switch_to_e = false #signal to switch to game e
var mutate = false #is mutating
var score = 0 #score
var bestscore = 0 #highscore
var first = true #first load
var new = false # new player shape
var dev = false #is testing
var end = false #game end


func _process(delta):
	if mutate:
		mutate = false
		state += 1
		if state == 4:
			switch_to_e = true
		if state == 3:
			switch_to_d = true
		if state == 1:
			switch_to_b = true
		if state == 2:
			switch_to_c = true
		if state == 0:
			switch_to_a = true
	if state > 4:
		state = 0
