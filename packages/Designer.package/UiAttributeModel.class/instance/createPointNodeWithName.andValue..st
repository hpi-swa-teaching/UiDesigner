data insertion
createPointNodeWithName: name andValue: value
	| lineedit |
	
	lineedit := UiLineEdit new
				hResizing: #spaceFill.
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #isEditable put: true;
		at: #type put: Point;
		at: #editorMorph put: lineedit;
		yourself.