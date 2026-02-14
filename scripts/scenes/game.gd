class_name Game
extends Node2D

func _process(_delta: float) -> void:
    if Input.is_action_just_pressed("esc"):
        SaveGameManager.save()
        SceneManager.load_scene(SceneManager.SceneId.MAIN_MENU)
        return
