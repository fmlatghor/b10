extends Control

var main_menu
var settings_menu

func ready():
	main_menu = $Main_Menu
	settings_menu = $Settings_Menu

	main_menu.connect("pressed", self, "main_menu_button_pressed", ["New_Game"])
	main_menu/Continue.connect("pressed", self, "main_menu_button_pressed", ["Continue"])
	$Main_Menu/Settings.connect("pressed", self, "main_menu_button_pressed", ["Settings"])
	$Main_Menu/Quit.connect("pressed", self, "main_menu_button_pressed", ["Quit"])

	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	var globals = get_node("/root/Globals")
	
	$Settings_Menu/HSlider_Mouse_Sensitivity.value = globals.mouse_sensitivity
	$Settings_Menu/HSlider_Joypad_Sensitivity.value = globals.joypad_sensitivity

func main_menu_button_pressed(button_name):
	#if button_name == "new_game":
	if button_name == "settings":
		settings_menu.visible = true
		main_menu.visible = false
	elif button_name == "quit":
		get_tree().quit()
