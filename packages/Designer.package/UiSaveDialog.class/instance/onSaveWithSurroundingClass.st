slots
onSaveWithSurroundingClass
		
	uiDesigner ui packageNameEdit theText: self ui packageNameInput theText.
	uiDesigner save: true.
	closeDesignerAfterwards ifTrue: [ 	uiDesigner deleteOwnWindows. 
									     	uiDesigner owner delete.].
	self owner delete. 
