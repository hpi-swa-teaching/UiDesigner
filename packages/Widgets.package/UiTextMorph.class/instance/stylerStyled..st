styling
stylerStyled: styledText

	self contents runs: styledText runs.
	self updateFromParagraph.
	
	selection ifNotNil: [:s |
		self editor
			selectInvisiblyFrom: s first
			to: s last;
			storeSelectionInParagraph;
			setEmphasisHere].

	self editor blinkParen.

	self textStyled: self text.