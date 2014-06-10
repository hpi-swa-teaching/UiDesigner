accessing
range: anInterval

	| guardedValue |
	guardedValue := self truncate
		ifTrue: [anInterval first ceiling asInteger to: anInterval last ceiling asInteger]
		ifFalse: [anInterval].
		
	guardedValue = self range ifTrue: [^ self].
	
	minimum := guardedValue first.
	maximum := guardedValue last.
	
	self
		sliderChange: #rangeChange;
		rangeChanged: self range.