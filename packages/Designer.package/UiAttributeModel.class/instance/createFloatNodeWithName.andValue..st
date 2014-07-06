data insertion
createFloatNodeWithName: name andValue: value
	| lineedit |
	
	lineedit := self getCachedOrNewWidget: UiLineEdit For: name.
	
	lineedit
		hResizing: #spaceFill;
		theText: value;
		converter: [:raw | | convertedValue |
			convertedValue :=  [Float readFrom: raw asString readStream ] on: Error do: [nil].
			
			convertedValue 
				ifNil: [ value ] 
				ifNotNil: [ self changeProperty: name To: convertedValue ]].
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: Float;
		at: #editorMorph put: lineedit;
		yourself.