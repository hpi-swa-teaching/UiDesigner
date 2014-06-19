as yet unclassified
test01Item

	sut
		textSelector: #asString;
		iconSelector: #imageForm.
	
	(sut itemFor: Morph new) in: [:item |
		self
			assert: item submorphs size = 2;
			assert: (item submorphs first isKindOf: ImageMorph);
			assert: (item submorphs second isKindOf: TextMorph)].