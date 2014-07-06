data insertion
createTextNodeWithName: name andValue: value
	| lineedit |
	
	lineedit := self getCachedOrNewWidget: UiLineEdit For: name.
	
	lineedit
		theText: value;
		hResizing: #spaceFill;
		converter: [:raw | self changeProperty: name To: raw asString ].
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: String;
		at: #editorMorph put: lineedit;
		yourself.