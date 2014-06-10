accessing
dashColor: aColor

	dashColor = aColor
		ifTrue: [^ self].
	dashColor := aColor.
	self redrawLater.