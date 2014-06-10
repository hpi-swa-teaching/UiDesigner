actions
finishSliderMovement: aMouseEvent

	self sliderDown: false.
	self stopStepping.
	
	mouseDownEventPosition := nil.