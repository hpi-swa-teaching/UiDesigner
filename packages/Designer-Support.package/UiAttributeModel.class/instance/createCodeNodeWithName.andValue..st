data insertion
createCodeNodeWithName: name andValue: currentValue
	
	| lineedit |
	lineedit := self getCachedOrNewWidget: UiLineEdit For: name.
	lineedit
		hResizing: #spaceFill;
		theText: currentValue;
		converter: [:raw | | convertedValue |
			convertedValue :=  [Compiler evaluate: raw asString] on: Error do: [nil].
			convertedValue 
				ifNil: [ currentValue ] 
				ifNotNil: [ self changeProperty: name To: convertedValue ] ].
	
	^ UiPropertyItemNode new
			at: #propertyName put: name;
			at: #editorMorph put: lineedit;
			yourself