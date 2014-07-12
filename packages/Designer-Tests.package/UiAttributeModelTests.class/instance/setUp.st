initialize-release
setUp
	| container |
	
	container := UiContainer new.
	model := UiAttributeModel new.
	button := UiPushButton new.
	
	container addMorphBack:  button.
	
	model setNewWidget: button.