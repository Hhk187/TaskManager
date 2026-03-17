extends Node
class_name AppManagerTest

var app_manager := AppManager.new(true)



func _ready() -> void:
	show_loaded_files()
	change_view()



func show_loaded_files():
	print("Loading view")
	print(app_manager._loadViewsFromFiles())


func change_view():
	print("\n")
	print("changing view to %s" % VIEWS.DAILTASKS)
	await get_tree().create_timer(1).timeout
	print("view has changed to %s" % app_manager.ChangeView(VIEWS.DAILTASKS))
