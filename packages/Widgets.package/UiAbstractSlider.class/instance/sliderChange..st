updating
sliderChange: aSliderChange
	"This is a local callback. Possible values: #rangeChange, #orientationChange, #stepsChange, #valueChange"
	
	aSliderChange = #valueChange ifTrue: [
		self sliderPosition: self currentValue].
	
	aSliderChange = #rangeChange ifTrue: [
		self sliderPosition: self sliderPosition.
		self currentValue: self currentValue].
	
	aSliderChange = #orientationChange ifTrue: [
		self extent: self height @ self width].