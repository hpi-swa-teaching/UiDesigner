accessing
checkable: aBoolean

	aBoolean == checkable ifTrue: [^ self].

	checkable := aBoolean.
	
	aBoolean ifFalse: [checked := false].