actions
doSliderMovement: aMouseMoveEvent
	"Only allow integer steps with mouse dragging."
	
	| value |
	self isStepping
		ifTrue: [^ mouseDownEventPosition := aMouseMoveEvent position].
	
	value := self orientation = #horizontal
		ifTrue: [self pixelToValue: aMouseMoveEvent position x - mouseDownEventPosition x]
		ifFalse: [self pixelToValue: mouseDownEventPosition y - aMouseMoveEvent position y].

	self sliderPosition: mouseDownSliderPosition + (self truncate
		ifTrue: [value reduce asInteger]
		ifFalse: [value]).