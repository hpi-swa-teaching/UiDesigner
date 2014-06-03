data insertion
createTextNodeWithName: name andValue: value
	| lineedit |
	
	lineedit := UiLineEdit new
				hResizing: #spaceFill.
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #isEditable put: true;
		at: #type put: String;
		at: #editorMorph put: lineedit;
		yourself.