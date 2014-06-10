rows/columns - specs - convenience
addTextColumn: headerText selector: aSymbol
	
	self addColumn: (UiItemViewColumnSpec new
		headerText: headerText;
		textSelector: aSymbol).