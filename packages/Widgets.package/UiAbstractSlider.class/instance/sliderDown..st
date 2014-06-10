accessing
sliderDown: aBoolean

	aBoolean = self isSliderDown ifTrue: [^ self].

	sliderDown := aBoolean.
	
	"Synchronize on slider release."
	aBoolean
		ifFalse: [self currentValue: self sliderPosition].
	
	aBoolean
		ifTrue: [self sliderPressed]
		ifFalse: [self sliderReleased].