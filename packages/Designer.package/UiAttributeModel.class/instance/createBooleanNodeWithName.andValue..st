data insertion
createBooleanNodeWithName: name andValue: value 
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: Boolean;
		at: #isCheckable put: true;
		at: #isChecked put: value;
		yourself.