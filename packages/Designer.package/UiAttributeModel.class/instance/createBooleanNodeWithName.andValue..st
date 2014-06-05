data insertion
createBooleanNodeWithName: name andValue: value 

	| checkbox checkboxEditor |
	checkboxEditor := UiCheckBox new
				hResizing: #spaceFill;
				checked: value.
	
	checkbox := UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: Boolean;
		at: #isCheckable put: true;
		at: #isChecked put: value;
		"at: #editorMorph put: checkboxEditor;"
		yourself.
		
	"name connect: checkbox signal: #clicked: toSelector: #change."
	^checkbox	
	
	