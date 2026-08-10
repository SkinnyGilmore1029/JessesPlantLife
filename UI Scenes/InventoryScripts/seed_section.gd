extends PanelContainer


var signal_data :SignalManager

func _ready() -> void:
    signal_data.change_pumpkin_count.connect(handle_pumpkin_count)
    signal_data.change_purple_count.connect(handle_purple_count)
    signal_data.change_pink_count.connect(handle_pink_count)
    signal_data.change_vine_count.connect(handle_vine_count)


func handle_pumpkin_count(new_count: int) -> void:
    %PumpkinCount.text = str(new_count)

func handle_purple_count(new_count: int) -> void:
    %PurpleFlowersCount.text = str(new_count)

func handle_pink_count(new_count: int) -> void:
    %PinkFlowersCount.text = str(new_count)

func handle_vine_count(new_count: int) -> void:
    %VinePlantCount.text = str(new_count)