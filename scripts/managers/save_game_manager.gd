class_name SaveGameManager
extends Node

const ALWAYS_LOAD_NEW := false
const SAVE_PATH := "user://save.tscn"
const GAME_DEFAULT : PackedScene = preload("uid://df2mac0t3xwt6")

static var CURRENT : Game

static func save() -> void:
    var save_scene := PackedScene.new()
    save_scene.pack(CURRENT)
    ResourceSaver.save(save_scene, SAVE_PATH)

static func load() -> Game:
    if ALWAYS_LOAD_NEW:
        CURRENT = GAME_DEFAULT.instantiate()
        return CURRENT
    
    var current_save : PackedScene = ResourceLoader.load(SAVE_PATH) if ResourceLoader.exists(SAVE_PATH) else null
    if !current_save:
        current_save = GAME_DEFAULT
    CURRENT = current_save.instantiate()
    return CURRENT
