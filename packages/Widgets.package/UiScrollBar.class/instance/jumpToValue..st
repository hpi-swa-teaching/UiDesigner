actions
jumpToValue: aMouseEvent
	"Jumps to the value under the mouse cursor if shift was pressed."
	
	| value |
	aMouseEvent shiftPressed ifFalse: [^ self].
	
	self orientation = #horizontal
		ifTrue: [value := self pixelToValue: aMouseEvent position x - pagingMorph left - (sliderButton width / 2)]
		ifFalse: [value := self pixelToValue: aMouseEvent position y - pagingMorph top - (sliderButton height / 2)].
		
	self sliderPosition: value.