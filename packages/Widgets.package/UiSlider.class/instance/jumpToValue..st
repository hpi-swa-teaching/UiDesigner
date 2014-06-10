actions
jumpToValue: aMouseEvent
	"Jumps to the value under the mouse cursor if shift was pressed."
	
	| value |
	aMouseEvent shiftPressed ifFalse: [^ self].
	
	self orientation = #horizontal
		ifTrue: [value := self pixelToValue: aMouseEvent position x - self left - (sliderButton width / 2)]
		ifFalse: [value := self pixelToValue: self bottom - aMouseEvent position y - (sliderButton height / 2)].
		
	self sliderPosition: value.