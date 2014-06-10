geometry
optimalWidth

	self flag: #magicNumber. "mt: Why is scrollbar thickness not sufficient here?"
	^ self widget
		ifNil: [0]
		ifNotNil: [:w | w width + self scrollBarThickness + 5]