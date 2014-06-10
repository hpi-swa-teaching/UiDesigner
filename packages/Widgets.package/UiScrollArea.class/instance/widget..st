accessing
widget: aMorph

	self transformMorph removeAllMorphs.
	
	aMorph ifNotNil: [:m |
		self transformMorph addMorph: aMorph].