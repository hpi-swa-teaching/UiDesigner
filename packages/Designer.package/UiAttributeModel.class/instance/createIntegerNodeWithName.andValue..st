data insertion
createIntegerNodeWithName: name andValue: value
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #propertyValue put: value;
		at: #isEditable put: true;
		at: #type put: #integer;
		yourself.