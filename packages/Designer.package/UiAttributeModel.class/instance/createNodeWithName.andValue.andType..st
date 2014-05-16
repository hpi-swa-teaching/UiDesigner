data insertion
createNodeWithName: propertyName andValue: propertyValue andType: type
	" do not use me directly! use the helper function!"
	^ UiPropertyItemNode new
		at: #propertyName put: propertyName;
		at: #propertyValue put: propertyValue;
		at: #isEditable put: true;
		at: #type put: type;
		yourself.