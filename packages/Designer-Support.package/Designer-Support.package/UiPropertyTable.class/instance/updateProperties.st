updating
updateProperties

	
	nextRowColor := nil.

	self
		removeAllMorphs;
		addAllProperties: lastMorph;
		removeIgnoredProperties: lastMorph;
		updateNameColumnWidth;
		resized.