slots
onOkButtonClick
	
	uiDesigner ui packageNameEdit theText: self ui packageNameInput theText.
	uiDesigner save: false.
	self shallCloseDesignerAfterwards ifTrue: [ 	uiDesigner deleteOwnWindows. 
									     	uiDesigner owner delete.].
	self owner delete. 
