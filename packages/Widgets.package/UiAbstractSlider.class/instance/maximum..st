accessing
maximum: aNumber

	| guardedValue |
	guardedValue := self truncate
		ifTrue: [aNumber ceiling asInteger]
		ifFalse: [aNumber].
	
	guardedValue = self maximum ifTrue: [^ self].
	
	maximum := guardedValue.
	
	self
		sliderChange: #rangeChange;
		rangeChanged: self range.