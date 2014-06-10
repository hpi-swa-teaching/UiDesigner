accessing
resizeable: aBoolean

	resizeable := aBoolean.
	aBoolean
		ifTrue: [self initializeEventHandler]
		ifFalse: [self eventHandler: nil].