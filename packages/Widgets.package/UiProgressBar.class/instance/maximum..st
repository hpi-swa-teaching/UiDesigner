accessing
maximum: aNumber

	maximum == aNumber ifTrue: [^ self].
	maximum := aNumber.
	self redrawLater.