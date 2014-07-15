private
addPropertyLabel: aString editor: aMorph

	| row |
	row := Morph new
		color: self nextRowColor;
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		cellInset: 6;
		minHeight: 22;
		layoutInset: 1.

	row
		addMorphBack: (UiLabel new text: aString);
		addMorphBack: aMorph.
	
	self addMorphBack: row.