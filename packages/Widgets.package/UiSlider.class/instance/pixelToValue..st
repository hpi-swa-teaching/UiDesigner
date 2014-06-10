converting
pixelToValue: anInteger

	self range extent = 0 ifTrue: [^ 0].

	self orientation = #horizontal
		ifTrue: [^ anInteger / ((pagingMorph width - sliderButton width) max: 1) * self range extent].
		
	self orientation = #vertical
		ifTrue: [^ anInteger / ((pagingMorph height - sliderButton height) max: 1) * self range extent].
		
	^ 0