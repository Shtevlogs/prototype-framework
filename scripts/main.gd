class_name Main
extends Node2D

func _ready() -> void:
    SceneManager.load_scene(SceneManager.SceneId.MAIN_MENU)
