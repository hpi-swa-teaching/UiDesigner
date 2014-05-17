data insertion
createRectangleNodeWithName: name andValue: value
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #propertyValue put: value;
		at: #isEditable put: true;
		at: #type put: Rectangle;
		yourself.