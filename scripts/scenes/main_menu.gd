class_name MainMenu
extends Node2D

func _on_start_button_pressed() -> void:
    SceneManager.load_scene(SceneManager.SceneId.GAME)
