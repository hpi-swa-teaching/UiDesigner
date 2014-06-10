rows/columns - specs - convenience
addColumn: headerText textSelector: aSymbol and: selectorMap
	"This is a convenient method for adding a new column that just displays text."
	
	self addColumn: (
		(UiItemViewColumnSpec newFrom: selectorMap)
			headerText: headerText;
			textSelector: aSymbol).