data insertion
createCodeNodeWithName: name andValue: currentValue
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #propertyValue put: currentValue;
		at: #isEditable put: true;
		at: #type put: Object;
		yourself.