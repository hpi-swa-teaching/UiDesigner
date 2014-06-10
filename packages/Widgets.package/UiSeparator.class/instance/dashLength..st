accessing
dashLength: anInteger

	dashLength = anInteger
		ifTrue: [^ self].
	dashLength := anInteger.
	self redrawLater.