accessing
currentValue: aNumber

	currentValue == aNumber ifTrue: [^ self].	
	currentValue := self isIndeterminate
		ifTrue: [aNumber]
		ifFalse: [aNumber min: maximum max: minimum].
	self redrawLater.