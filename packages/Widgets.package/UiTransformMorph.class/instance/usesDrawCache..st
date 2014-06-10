caching
usesDrawCache: aBoolean

	aBoolean = usesDrawCache ifTrue: [^ self].

	usesDrawCache := aBoolean.
	
	usesDrawCache ifFalse: [self redraw].