events - private
simulateMouseEvent: aSymbol at: aPoint buttons: someMouseButtons start: aStartPoint morph: aRadioButton

	super
		simulateMouseEvent: aSymbol
		at: (aRadioButton instVarNamed: #box) center
		buttons: someMouseButtons
		start: aStartPoint
		morph: aRadioButton