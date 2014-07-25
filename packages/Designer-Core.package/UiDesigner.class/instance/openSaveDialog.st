save/load
openSaveDialog
	
	| uiSaveDialog |
	uiSaveDialog := UiSaveDialog new..
	uiSaveDialog 
		initializeWith: self; 
		connectViewWith: container and: propertyTable;
		loadTextFrom: container and: ui packageNameEdit;
		shallCloseDesignerAfterwards: closeDesignerAfterwards;
		open