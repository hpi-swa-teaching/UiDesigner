accessing
minimum: aNumber

	minimum == aNumber ifTrue: [^ self].
	minimum := aNumber.
	self redrawLater.