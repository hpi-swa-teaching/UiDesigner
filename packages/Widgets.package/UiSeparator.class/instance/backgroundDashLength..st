accessing
backgroundDashLength: anInteger

	backgroundDashLength = anInteger
		ifTrue: [^ self].
	backgroundDashLength := anInteger.
	self redrawLater.