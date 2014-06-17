updating
updateProperties: aMorph

	lastMorph == aMorph ifTrue: [^ self].
	lastMorph := aMorph.
	
	nextRowColor := nil.

	self
		removeAllMorphs;
		addAllProperties: aMorph;
		removeIgnoredProperties: aMorph;
		updateNameColumnWidth;
		resized.