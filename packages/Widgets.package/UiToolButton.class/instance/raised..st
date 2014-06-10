accessing
raised: aBoolean

	aBoolean == raised ifTrue: [^ self].

	raised := aBoolean.
	self redrawLater.