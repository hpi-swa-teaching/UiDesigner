adding - combined
addProportionalLayoutProperties: aMorph

	self addSeparator: 'Proportional Layout'.
	
	self addIntegerProperty: #layoutInset morph: aMorph.
	self addListProperty: #cellPositioning values: #(topLeft topRight bottomLeft bottomRight topCenter leftCenter rightCenter bottomCenter center) morph: aMorph.
