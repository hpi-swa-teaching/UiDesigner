accessing
outerBorderWidth: anInteger

	outerBorderWidth = anInteger ifTrue: [^ self].
	outerBorderWidth := anInteger.
	self redrawLater.