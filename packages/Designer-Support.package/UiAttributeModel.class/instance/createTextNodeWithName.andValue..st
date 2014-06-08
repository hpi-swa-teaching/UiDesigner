data insertion
createTextNodeWithName: name andValue: value
	| lineedit |
	
	lineedit := UiLineEdit new
				theText: value;
				hResizing: #spaceFill;
				converter: [:raw | self changeProperty: name To: raw asString ].
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: String;
		at: #editorMorph put: lineedit;
		yourself.