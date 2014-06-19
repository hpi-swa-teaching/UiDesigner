events - private
simulateMouseEvent: aSymbol at: aPoint buttons: someMouseButtons start: aStartPoint morph: aCheckBox

	super
		simulateMouseEvent: aSymbol
		at: (aCheckBox instVarNamed: #box) center
		buttons: someMouseButtons
		start: aStartPoint
		morph: aCheckBox