rows/columns - specs - convenience
addColumn: headerText textSelector: aSymbol
	
	self addColumn: (UiItemViewColumnSpec new
		headerText: headerText;
		textSelector: aSymbol).