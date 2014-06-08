adding - combined
addTableLayoutProperties: aMorph

	self addSeparator: 'Table Layout'.
	
	self addListProperty: #listDirection values: #(leftToRight rightToLeft topToBottom bottomToTop) morph: aMorph.

	self addIntegerProperty: #cellInset morph: aMorph.
	self addCodeProperty: #layoutInset morph: aMorph.

	self addListProperty: #cellPositioning values: #(topLeft topRight bottomLeft bottomRight topCenter leftCenter rightCenter bottomCenter center) morph: aMorph.
	self addListProperty: #cellSpacing values: #(globalRect globalSquare localRect localSquare none) morph: aMorph.
	self addListProperty: #listCentering values: #(topLeft bottomRight center justified) morph: aMorph.
	self addListProperty: #listSpacing values: #(equal none) morph: aMorph.
	
	self addCodeProperty: #minCellSize morph: aMorph.
	self addCodeProperty: #maxCellSize morph: aMorph.
	
	self addListProperty: #wrapCentering values: #(topLeft bottomRight center justified) morph: aMorph.
	self addListProperty: #wrapDirection values: #(leftToRight rightToLeft topToBottom bottomToTop none) morph: aMorph.