data insertion
createListNodeWithName: name withValues: values AndCurrentValue: currentValue
	| combobox |
	
	combobox := UiComboBox new 
					hResizing: #spaceFill.
	
	values do: [:value | combobox addText: value asString].
	
	combobox currentIndex: (values indexOf: currentValue).
	
	" if this is set before value adding, it would not work..."
	combobox converter: [:item | self changeProperty: name To: item asString asSymbol. item asString].
	
	^ UiPropertyItemNode new
		at: #propertyName put: name;
		at: #type put: Collection;
		at: #editorMorph put: combobox;
		yourself.