rows/columns - specs - convenience
addColumn: headerText for: aColumnSpec
	
	self addColumn: (
		aColumnSpec 
			headerText: headerText;
			yourself).