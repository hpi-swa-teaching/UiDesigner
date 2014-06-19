as yet unclassified
exampleItem

	^ Morph new
		color: Color transparent;
		addMorphBack: UiButtonIcons plusSmallIcon asMorph;
		addMorphBack: 'Hello, World!' asText asMorph lock;
		yourself.