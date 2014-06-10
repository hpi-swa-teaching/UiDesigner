accessing
startingOffset: anInteger

	startingOffset = anInteger
		ifTrue: [^ self].
	startingOffset := anInteger.
	self redrawLater.