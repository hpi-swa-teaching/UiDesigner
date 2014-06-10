accessing
onOkButton
		
	uiDesigner ui packageNameEdit theText: self ui packageNameInput theText.
	uiDesigner save: (self ui autoGenerationCheckbox checked).
	self owner delete.
