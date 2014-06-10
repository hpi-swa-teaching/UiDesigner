accessing
down: aBoolean

	aBoolean == down ifTrue: [^ self].
	
	down := aBoolean.
	
	self redrawLater.
	
	aBoolean
		ifFalse: [self toggle].