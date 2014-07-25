slots
onSaveWithSurroundingClassClick
		
	uiDesigner ui packageNameEdit theText: self ui packageNameInput theText.
	uiDesigner save: true.
	self shallCloseDesignerAfterwards ifTrue: [ 
		uiDesigner deleteOwnWindows. 
		uiDesigner owner delete.].
	self owner delete. 
