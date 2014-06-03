data insertion
createPointNodeWithName: name andValue: value
	| lineedit |
	
	lineedit := UiLineEdit new
				theText: value;
				hResizing: #spaceFill;
				converter: [:raw | | result |
					result := [Compiler evaluate: raw asString] on: Error do: [nil].
					(result isKindOf: Point)
						ifTrue: [ self changeProperty: name To: value ]
						ifFalse: [ value ]].
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: Point;
		at: #editorMorph put: lineedit;
		yourself.