accessing
backgroundColor: aColor

	backgroundColor = aColor
		ifTrue: [^ self].
	backgroundColor := aColor.
	self redrawLater.