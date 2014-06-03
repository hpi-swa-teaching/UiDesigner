data insertion
createListNodeWithName: name withValues: values AndCurrentValue: currentValue
	| combobox |
	
	combobox := UiComboBox new 
					hResizing: #spaceFill.
	
	values do: [:value | combobox addText: value asString].
	
	" if this is set before value adding, it would not work..."
	combobox converter: [:item | self changeProperty: name To: currentValue asString. item asString asSymbol].
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: Collection;
		at: #editorMorph put: combobox;
		yourself.