data insertion
createIntegerNodeWithName: name andValue: value
	| lineedit node |
	
	lineedit := self getCachedOrNewWidget: UiLineEdit For: name.
	
	lineedit
		hResizing: #spaceFill;
		theText: value;
		converter: [:raw | | convertedValue |
			convertedValue := raw asString asInteger.
			
			convertedValue 
				ifNil: [ value ] 
				ifNotNil: [ self changeProperty: name To: convertedValue ]].
	
	node := UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: Integer;
		at: #editorMorph put: lineedit;
		yourself.
	
	^ node.