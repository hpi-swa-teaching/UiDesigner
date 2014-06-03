data insertion
createListNodeWithName: name withValues: values AndCurrentValue: currentValue
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #possibleValues put: values;
		at: #propertyValue put: currentValue;
		at: #isEditable put: true;
		at: #type put: Collection;
		yourself.