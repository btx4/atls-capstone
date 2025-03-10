extends Node2D

var red
var blu
var yel
var gre

func _input(event: InputEvent) -> void:
	
	if event.is_action_pressed("yellow"):
		yel = true
		$Button_Yellow.trigger()
	elif event.is_action_pressed("red"):
		red = true
		$Button_Red.trigger()
	elif event.is_action_pressed("green"):
		gre = true
		$Button_Green.trigger()
	elif event.is_action_pressed("blue"):
		blu = true
		$Button_Blue.trigger()
	elif event.is_action_pressed("stomp"):
		if red:
			$Red_stomp.restart()
			$Red_stomp.emitting = true
		if blu:
			$Blue_stomp.restart()
			$Blue_stomp.emitting = true
		if yel:
			$Yellow_stomp.restart()
			$Yellow_stomp.emitting = true
		if gre:
			$Green_stomp.restart()
			$Green_stomp.emitting = true
		$Button_center.trigger()
		if (not red and not blu and not gre and not yel):
			$White_stomp.restart()
			$White_stomp.emitting = true
			pass
		print("HERE")
	
	if event.is_action_released("yellow"):
		yel = false
		$Button_Yellow.untrigger()
	elif event.is_action_released("red"):
		red = false
		$Button_Red.untrigger()
	elif event.is_action_released("green"):
		gre = false
		$Button_Green.untrigger()
	elif event.is_action_released("blue"):
		blu = false
		$Button_Blue.untrigger()
	elif event.is_action_released("stomp"):
		$Button_center.untrigger()
