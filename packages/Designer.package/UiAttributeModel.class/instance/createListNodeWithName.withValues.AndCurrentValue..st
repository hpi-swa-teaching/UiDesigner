data insertion
createListNodeWithName: name withValues: values AndCurrentValue: currentValue
	| combobox |
	
	combobox := UiComboBox new 
					hResizing: #spaceFill; 
					vResizing: #spaceFill;
					converter: [:item | item asString asSymbol].
	
	values do: [:value | combobox addText: value asString].
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #isEditable put: false;
		at: #type put: Collection;
		at: #editorMorph put: combobox;
		yourself.