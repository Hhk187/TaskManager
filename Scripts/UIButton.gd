extends PanelContainer




@export var View : PackedScene


@onready var texture_button: TextureButton = $TextureButton
@onready var label: Label = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	texture_button.pressed.connect(_onButtonPressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _onButtonPressed():
	if View != null:
		get_tree().change_scene_to_packed(View)
