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
	
	pattern := #(1 =name).
		
	self connect: checkbox signal: #clicked: to: self selector: #checkBoxChangedTo:OnNode: pattern: pattern.
	
	^ node	
	
	