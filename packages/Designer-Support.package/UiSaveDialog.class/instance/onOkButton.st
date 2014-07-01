accessing
onOkButton
	
	uiDesigner ui packageNameEdit theText: self ui packageNameInput theText.
	uiDesigner save: false.
	closeDesignerAfterwards ifTrue: [ 	uiDesigner deleteOwnWindows. 
									     	uiDesigner owner delete.
									     	self owner delete. ]
							ifFalse: [self owner delete. ]
