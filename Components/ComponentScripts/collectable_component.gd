class_name CollectableComponent
extends Area2D


@export var collectable_data :Collectables

var signal_data :SignalManager

var CountSignals :Dictionary =  {
	"Pumpkin" : signal_data.change_pumpkin_count,
	"Purple Flower" : signal_data.change_purple_count,
	"Pink Flower" : signal_data.change_pink_count,
	"Vine Plant" : signal_data.change_vine_count
}


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		var signal_func = CountSignals.get(collectable_data.name)
		collectable_data.item_count +=1
		if signal_func:
			signal_func.emit(collectable_data.item_count)
		queue_free()
