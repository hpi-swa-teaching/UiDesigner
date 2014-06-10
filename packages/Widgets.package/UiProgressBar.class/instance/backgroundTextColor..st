accessing
backgroundTextColor: aColor

	backgroundTextColor = aColor
		ifTrue: [^ self].
	backgroundTextColor := aColor.
	self redrawLater.