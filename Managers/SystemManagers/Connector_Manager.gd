class_name AreaConnections
extends Resource

##StringName of the area name of component
@export var Connection_name: StringName

##The path to scene switching to
@export_file("*.tscn") var send_to: String

##The Spawn coordinates
@export var spawn_at :Vector2
