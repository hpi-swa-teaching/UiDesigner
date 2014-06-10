stepping
step
	"Automatically move the slider page-step-wise."
	
	| value |
	mouseDownEventPosition ifNil: [^ self stopStepping].
	
	self orientation = #horizontal
		ifTrue: [value := self pixelToValue: mouseDownEventPosition x - self left - (sliderButton width / 2)]
		ifFalse: [value := self pixelToValue: self bottom - mouseDownEventPosition y - (sliderButton height / 2)].
		
	value < self sliderPosition
		ifTrue: [self sliderPosition: (self sliderPosition - self pageStep max: value)]
		ifFalse: [self sliderPosition: (self sliderPosition + self pageStep min: value)].