class_name CollectableComponent
extends Area2D


@export var collectable_data :Collectables

var CountSignals :Dictionary =  {
	"Pumpkin" : [SignalHub.change_pumpkin_count, SignalHub.change_pumpkin_ui_count],
	"Purple Flower" : [SignalHub.change_purple_count, SignalHub.change_purple_ui_count],
	"Pink Flower" : [SignalHub.change_pink_count, SignalHub.change_pink_ui_count],
	"Vine Plant" : [SignalHub.change_vine_count, SignalHub.change_vine_ui_count],
	"Apple" : [SignalHub.change_apple_count, SignalHub.change_apple_ui_count],
	"Mushroom" : [SignalHub.change_mushroom_count, SignalHub.change_mushroom_ui_count],
	"Cherry" : [SignalHub.change_cherry_count, SignalHub.change_cherry_ui_count],
	"Strawberry" : [SignalHub.change_strawberry_count, SignalHub.change_strawberry_ui_count]
}


func _on_body_entered(body: Node2D) -> void:
	if body is JesseB:
		#Make the variables to save typing lol.
		var item_name = collectable_data.item_name
		var signal_to_emit = CountSignals.get(item_name)

		#only add the the count once to keep ui an inventory synced.
		collectable_data.item_count +=1

		#make sure signal_to_emit is not null before trying to use it.
		if signal_to_emit == null:
			push_warning("Forgot to add to Dictionary check/add -> ", str(item_name))
			return

		#make sure i remembered to put the signals in lol.
		if signal_to_emit == []:
			push_warning("Forgot to add the signals to the array check/add -> ", str(signal_to_emit))
			return

		#loop through array of the collected item name
		for s in signal_to_emit:
			#verify signal is there
			if s:
				s.emit(collectable_data.item_count)
			else:
				push_warning("Signal implemented wrong check -> ", str(s))
		#only needs to free parent once
		get_parent().queue_free()
