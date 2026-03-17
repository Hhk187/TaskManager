extends Node
class_name AppManager
# For testing
var _test = false



var PreviousView : Node
var CurrentView : Node

# Const
var Views : Dictionary[String, PackedScene]

func _init(test = false) -> void:
	_test = test

func _ready() -> void:
	if _test: return
	# Loading views
	_loadViewsFromFiles()
	
	# Home is showen by default
	if CurrentView == null:
		var _home_view :=  Views[VIEWS.HOME].instantiate()
		CurrentView = _home_view
		add_child(_home_view)


# Loads views
func _loadViewsFromFiles() -> Dictionary[String, PackedScene]:
	var _views : Dictionary[String, PackedScene] 
	
	for folder in ResourceLoader.list_directory(PATH.VIEWS):
		var _raw_name := folder.replace("/", "")
		_views[_raw_name] = ResourceLoader.load("%s%s%s.tscn" % [PATH.VIEWS, folder, _raw_name])
	
	Views = _views
	return _views

# changes view
func ChangeView(_view : String):
	if PreviousView:
		PreviousView.queue_free()
	
	PreviousView = CurrentView
	CurrentView = Views[_view].instantiate() 
	
	add_child(CurrentView)
	
	return CurrentView.name
