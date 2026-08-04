class_name JesseB
extends CharacterBody2D

var current_direction: Vector2
var came_from: String


func _ready() -> void:
	add_to_group("Player")
