converting
preferredSliderSize
	"Like #valueToPixel. Ignores the extent of the slider button."

	| abs |
	abs := self pageStep = 0
		ifFalse: [self pageStep / (self range extent + self pageStep)]
		ifTrue: [1].
	
	self orientation = #horizontal
		ifTrue: [^ abs * pagingMorph width].
		
	self orientation = #vertical
		ifTrue: [^ abs * pagingMorph height].
		
	^ 0