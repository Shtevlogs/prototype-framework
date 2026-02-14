class_name GameStateManager
extends Node

@export var player_state := PlayerState.new()

static var CURRENT : GameStateManager
func _ready() -> void:
    CURRENT = self
