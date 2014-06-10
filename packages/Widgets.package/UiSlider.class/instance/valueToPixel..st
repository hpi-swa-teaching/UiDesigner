converting
valueToPixel: aNumber
	"Converts a given number to a portion of the extent of this slider."

	| abs |
	self range extent = 0 ifTrue: [^ 0].

	abs := ((aNumber - self minimum) / self range extent).
	
	self orientation = #horizontal
		ifTrue: [^ abs * (pagingMorph width - sliderButton width)].
		
	self orientation = #vertical
		ifTrue: [^ abs * (pagingMorph height - sliderButton height)].
		
	^ 0