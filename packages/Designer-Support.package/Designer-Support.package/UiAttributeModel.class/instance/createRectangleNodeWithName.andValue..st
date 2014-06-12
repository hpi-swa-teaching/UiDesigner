data insertion
createRectangleNodeWithName: name andValue: value
	| lineedit |
	
	lineedit := UiLineEdit new
				theText: value;
				hResizing: #spaceFill;
				converter: [:raw | | result |
					result := [Compiler evaluate: raw asString] on: Error do: [nil].
					(result isKindOf: Rectangle) 
						ifTrue: [ self changeProperty: name To: result ] 
						ifFalse: [0@0 corner: 0@0]].
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: Rectangle;
		at: #editorMorph put: lineedit;
		yourself.