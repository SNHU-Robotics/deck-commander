extends Node2D

# This array holds all the data for our graph
var graphPoints = PoolVector2Array([Vector2(0,0), Vector2(15,1), Vector2(30,4), Vector2(45, 17), Vector2(60, -1)])

# Throttle
var throttle = 0

# Some constants
var updatespeed = 1 # How many pixels we shift on every frame
var graphWidth = 300
var graphColor = Color(0,0,0)

func _ready():
	pass

# Called whenever we want to redraw the graph (dont call manually)
func _draw():
	draw_polyline(graphPoints, graphColor, 4)

# Called regularly
func _process(_delta):
	# Move every element
	for i in range(len(graphPoints)):
		graphPoints[i] = graphPoints[i] + Vector2(-updatespeed,0)
		
	# Remove anything too old
	for p in graphPoints:
		if p.x < -graphWidth/2 + 25:
			graphPoints.remove(graphPoints.find(p)) # Seek and destroy!
	
	# Messy but it updates the throttle
	throttle = (Input.get_action_strength("ch_throttle_up") - Input.get_action_strength("ch_throttle_dn")) * -50
	
	# Refine but, this adds data
	graphPoints.append(Vector2((graphWidth / 2) - 80, throttle))
	
	# Redraw every time (optimize later?)
	update()
