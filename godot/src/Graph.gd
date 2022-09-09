extends Node2D

# This array holds all the data for our graph
var graphArray = [Vector2()]

# Some constants
var updatespeed = 2 # How many pixels we shift on every frame
var graphColor = Color(255,0,0)


func _ready():
	graphArray.append(Vector2(0, 0))
	graphArray.append(Vector2(15, 1))
	graphArray.append(Vector2(30, 4))
	graphArray.append(Vector2(45, 17))
	graphArray.append(Vector2(60, -1))
	_draw()
	

func _draw():
	draw_polyline(graphArray, graphColor, 2)

func _process(_delta):
	for dp in graphArray:
		dp += Vector2(-1,0)
	
	# Redraw every time
	update()
