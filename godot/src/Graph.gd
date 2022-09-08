extends Node2D

var from = Vector2(0,0)
var to = Vector2(75,0)
var col = Color(255,0,0)


func _ready():
	_draw()
	

func _draw():
	draw_line(from, to, col)
	from += Vector2(0, 50)
	to += Vector2(0,50)
