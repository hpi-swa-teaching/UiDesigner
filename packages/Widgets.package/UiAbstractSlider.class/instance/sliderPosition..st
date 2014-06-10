accessing
sliderPosition: aNumber

	| guardedValue |
	guardedValue := self guardedValue: aNumber.
	
	guardedValue = self sliderPosition ifTrue: [^ self].
	
	sliderPosition := guardedValue.
	
	self hasTracking ifTrue: [
		self currentValue: self sliderPosition].
	
	self sliderMoved: self sliderPosition.