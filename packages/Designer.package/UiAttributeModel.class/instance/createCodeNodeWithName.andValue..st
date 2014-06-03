data insertion
createCodeNodeWithName: name andValue: currentValue
	| lineedit |
	
	lineedit := UiLineEdit new
				hResizing: #spaceFill.
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #isEditable put: true;
		at: #type put: Object;
		at: #editorMorph put: lineedit;
		yourself.