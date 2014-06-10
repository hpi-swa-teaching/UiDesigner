accessing
autoExclusive: aBoolean

	autoExclusive == aBoolean ifTrue: [^ self].
	
	autoExclusive := aBoolean.
	
	aBoolean ifTrue: [self checkable: true].