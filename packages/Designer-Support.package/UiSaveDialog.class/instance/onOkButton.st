slots
onOkButton
	
	self uiDesigner ui packageNameEdit theText: self ui packageNameInput theText.
	self uiDesigner save: false.
	self shallCloseDesignerAfterwards ifTrue: [ 	self uiDesigner deleteOwnWindows. 
									     	self uiDesigner owner delete.].
	self owner delete. 
