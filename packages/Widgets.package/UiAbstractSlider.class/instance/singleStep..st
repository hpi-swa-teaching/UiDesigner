accessing
singleStep: anInteger

	anInteger = self singleStep ifTrue: [^ self].

	singleStep := anInteger.
	
	self sliderChange: #stepsChange.