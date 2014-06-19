data insertion
createBooleanNodeWithName: name andValue: value 
	| checkbox node pattern |
	
	checkbox := UiCheckBox new
				hResizing: #spaceFill;
				checked: value;
				text: ''.
	
	node := UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: Boolean;
		at: #editorMorph put: checkbox;
		yourself.
	
	pattern := {#= . name asSymbol . 1} asArray.
	self connect: checkbox signal: #clicked: to: self selector: #changeProperty:To: pattern: pattern.
	
	^ node	
	
	