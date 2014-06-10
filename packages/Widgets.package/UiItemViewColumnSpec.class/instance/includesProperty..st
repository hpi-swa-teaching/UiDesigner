testing
includesProperty: aProperty
	
	^ {textSelector. iconSelector. balloonTextSelector. checkedSelector. selectableSelector. checkableSelector. editableSelector. colorSelector. morphSelector}
		anySatisfy: [:selector | selector == aProperty]