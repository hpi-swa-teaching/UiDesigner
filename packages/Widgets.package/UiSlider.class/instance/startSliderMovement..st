actions
startSliderMovement: aMouseEvent

	mouseDownEventPosition := aMouseEvent position.
	
	((self orientation = #horizontal and: [aMouseEvent position x between: sliderButton left and: sliderButton right])
		or: [self orientation = #vertical and: [aMouseEvent position y between: sliderButton top and: sliderButton bottom]])
		ifTrue: [
			"Start slider dragging."
			mouseDownSliderPosition := self sliderPosition.
			self sliderDown: true]
		ifFalse: [
			"Start slider stepping."
			self startStepping]

