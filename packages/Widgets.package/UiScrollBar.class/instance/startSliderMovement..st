actions
startSliderMovement: aMouseEvent

	mouseDownEventPosition := aMouseEvent position.
	
	(sliderButton innerBounds containsPoint: aMouseEvent position) ifTrue: [
		"Start slider dragging."
		mouseDownSliderPosition := self sliderPosition.
		^ self sliderDown: true].
		
	(pagingMorph innerBounds containsPoint: aMouseEvent position)	 ifTrue: [
		"Start slider stepping."
		^ self startStepping].