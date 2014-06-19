as yet unclassified
test01Item

		sut
		textSelector: #asString;
		iconSelector: #imageForm.
	
	(sut itemFor: Morph new) in: [:item |
		self
			assert: item submorphs isEmpty;
			assert: (item isKindOf: UiItemViewMorph)
		].