geometry
outerBounds

	^ super outerBounds
	"(self owner isKindOf: UiContainer)
		ifTrue: [^ self bounds outsetBy: (3@3 corner: 3@3)]
		ifFalse: [^ self bounds]."