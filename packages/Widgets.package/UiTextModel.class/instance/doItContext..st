do-its
doItContext: aContext

	aContext == doItContext ifTrue: [^ self].
	doItContext := aContext.
	self contextChanged.