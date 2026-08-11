##This class will handle everything to do with the areas. Currently Extends Node.
class_name AreaHandler
extends Node


func change_area(new_area :PackedScene, spawn_location :Vector2) -> void:
    #Get The Worlds Areas parent node.
    var WorldArea = get_node("/root/MainGame/WorldAreas")

    #Get current child scene maybe for future use?
    #var _current_scene = WorldArea.get_child(0)

    #I don't know why there would be more then one child but loop through them and free them all.
    for area in WorldArea.get_children():
        area.queue_free()

    #Make the new scene so i can get in to it.
    var area_going_to := new_area.instantiate()
    WorldArea.add_child(area_going_to)
    SpawnManager.spawn_jesse(spawn_location)

