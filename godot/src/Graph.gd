extends Node2D

# This array holds all the data for our graph
var graphArray = [Vector2()]

# Some constants
var updatespeed = 2 # How many pixels we shift on every frame
var graphColor = Color(255,0,0)


func _ready():
	# Remove these later, just populating some data
	graphArray.append(Vector2(0, 0))
	graphArray.append(Vector2(15, 1))
	graphArray.append(Vector2(30, 4))
	graphArray.append(Vector2(45, 17))
	graphArray.append(Vector2(60, -1))

# Called whenever we want to redraw the graph (dont call manually)
func _draw():
	draw_polyline(graphArray, graphColor, 2)

# Called regularly
func _process(_delta):
	for dp in graphArray:
		dp += Vector2(-1,0)
	
	# Redraw every time (optimize later?)
	update()
