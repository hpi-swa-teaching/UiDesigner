save/load
openSaveDialog
	
	| uiSaveDialog |
	uiSaveDialog := UiSaveDialog new..
	uiSaveDialog initializeWith: self.
	uiSaveDialog 
		connectViewWith: container and: propertyTable;
		loadTextFrom: container and: ui packageNameEdit.
		
	uiSaveDialog open.
	
	"self addMorph: (UiSaveDialog new open)."