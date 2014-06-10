accessing
pageStep: anInteger

	| guardedValue |
	guardedValue := anInteger max: 0.
	
	guardedValue = self pageStep ifTrue: [^ self].

	pageStep := guardedValue.
	
	self sliderChange: #stepsChange.