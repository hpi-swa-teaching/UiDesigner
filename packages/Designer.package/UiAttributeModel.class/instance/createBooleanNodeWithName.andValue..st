data insertion
createBooleanNodeWithName: name andValue: value
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #isEditable put: true;
		at: #type put: Boolean;
		at: #isCheckable put: false;
		at: #isChecked put: value;
		yourself.