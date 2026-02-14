class_name Player
extends Polygon2D

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
        GameStateManager.CURRENT.player_state.xp += GameConfig.XP_PER_SPAcE
        print(str(GameStateManager.CURRENT.player_state.xp))

    position += dir * delta * GameConfig.PLAYER_MOVE_SPEED
