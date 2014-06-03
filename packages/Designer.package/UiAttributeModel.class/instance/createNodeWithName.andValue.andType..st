data insertion
createNodeWithName: propertyName andValue: propertyValue andType: type
	" do not use me directly! use the helper function!"
	| lineedit |
	
	lineedit := UiLineEdit new
				hResizing: #spaceFill.
				
	lineedit theText: propertyValue.
	
	^ UiPropertyItemNode new
		at: #propertyName put: propertyName;
		at: #editorMorph put: lineedit;
		at: #type put: type;
		yourself.