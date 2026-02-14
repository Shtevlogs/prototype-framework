class_name Player
extends Polygon2D

const PLAYER_SPEED := 35.0

func _process(delta: float) -> void:
    var dir := Vector2.ZERO
    
    if Input.is_action_pressed("ui_right"):
        dir.x += 1
    if Input.is_action_pressed("ui_left"):
        dir.x -= 1
    if Input.is_action_pressed("ui_up"):
        dir.y -= 1
    if Input.is_action_pressed("ui_down"):
        dir.y += 1

    if Input.is_action_just_pressed("space"):
        GameStateManager.CURRENT.player_state.xp += 1
        print(str(GameStateManager.CURRENT.player_state.xp))

    position += dir * delta * PLAYER_SPEED
