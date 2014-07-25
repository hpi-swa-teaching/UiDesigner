initialize-release
initialize

	| container |
	container := UiContainer new.
	model := UiAttributeModel new.
	button := UiPushButton new.
	
	container addMorphBack:  button.
	model setNewWidget: button.