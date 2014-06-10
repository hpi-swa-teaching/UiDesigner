accessing
currentValue: aNumber

	| guardedValue |
	guardedValue := self guardedValue: aNumber.
	
	guardedValue = self currentValue ifTrue: [^ self].

	currentValue := guardedValue.
	
	self
		sliderChange: #valueChange;
		valueChanged: self currentValue.