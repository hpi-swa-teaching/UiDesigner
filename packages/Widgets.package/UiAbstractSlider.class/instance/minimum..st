accessing
minimum: aNumber

	| guardedValue |
	guardedValue := self truncate
		ifTrue: [aNumber ceiling asInteger]
		ifFalse: [aNumber].
		
	guardedValue = self minimum ifTrue: [^ self].
	
	minimum := guardedValue.
	
	self
		sliderChange: #rangeChange;
		rangeChanged: self range.