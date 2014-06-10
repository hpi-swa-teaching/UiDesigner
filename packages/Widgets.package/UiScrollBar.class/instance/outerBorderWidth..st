accessing
outerBorderWidth: anInteger

	anInteger = outerBorderWidth ifTrue: [^ self].

	outerBorderWidth := anInteger.
	
	self redrawLater.