accessing
readOnly: aBoolean

	lineEdit readOnly: aBoolean.
	
	self eventHandler mouseDownPriority: (aBoolean ifTrue: [1] ifFalse: [0]).
	
	self updateSubmorphs.