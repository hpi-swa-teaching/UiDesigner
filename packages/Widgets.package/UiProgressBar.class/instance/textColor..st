accessing
textColor: aColor

	textColor = aColor
		ifTrue: [^ self].
	textColor := aColor.
	self redrawLater.