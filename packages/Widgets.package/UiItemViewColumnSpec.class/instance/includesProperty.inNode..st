testing
includesProperty: aProperty inNode: aNode

	| checkBlock |
	checkBlock := [:symbolOrInteger | (symbolOrInteger isInteger
		ifTrue: [aNode properties at: symbolOrInteger ifAbsent: []]
		ifFalse: [symbolOrInteger]) = aProperty].
	
	^ {textSelector. iconSelector. balloonTextSelector. checkedSelector. selectableSelector. checkableSelector. editableSelector. colorSelector. morphSelector}
		anySatisfy: [:selector | checkBlock value: selector]