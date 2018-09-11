extends Control

onready var view1 = $Splitter/ViewportContainer1/Viewport
onready var view2 = $Splitter/ViewportContainer2/Viewport
onready var view3 = $Splitter/ViewportContainer3/Viewport
onready var view4 = $Splitter/ViewportContainer4/Viewport
onready var camera1 = $Splitter/ViewportContainer3/Viewport
onready var track = $Splitter/ViewportContainer4/Viewport

func _ready():
	view2.world = view1
	view3.world = view1
	view4.world = view1
	BGMplayer.stop()
	BGMplayer.stream = load("res://SFX/Juhani Junkala [Retro Game Music Pack] Level 2.wav")
	BGMplayer.play()
	update_player_count()


func update_player_count():
	var name1 = $Splitter/ViewportContainer1/Name1
	var name2 = $Splitter/ViewportContainer2/Name2
	var name3 = $Splitter/ViewportContainer3/Name3
	var name4 = $Splitter/ViewportContainer4/Name4
	
	name1.text = ApplyCustomization.Player_names[1]
	if name2: name2.text = ApplyCustomization.Player_names[2]
	if name3: name3.text = ApplyCustomization.Player_names[3]
	if name4: name4.text = ApplyCustomization.Player_names[4]
	if ApplyCustomization.player_count == 1:
		$Splitter/ViewportContainer2.hide()
		$Splitter/ViewportContainer3.hide()
		$Splitter/ViewportContainer4.hide()
	if ApplyCustomization.player_count == 2:
		$Splitter/ViewportContainer3.hide()
		$Splitter/ViewportContainer4.hide()
	if ApplyCustomization.player_count == 3:
		$Splitter/ViewportContainer4.hide()
