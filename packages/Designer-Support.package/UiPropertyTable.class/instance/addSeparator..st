private
addSeparator: aString

	| row |
	row := Morph new
		color: (Color gray: 0.4);
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		listCentering: #center;
		cellInset: 6;
		minHeight: 10;
		layoutInset: 1.

	row addMorphBack: (UiLabel new text: ('<font color="#FFFFFF" size="9"><b>', aString, '</b></font>') asHtmlText).
	self addMorphBack: row.
	
	self resized.