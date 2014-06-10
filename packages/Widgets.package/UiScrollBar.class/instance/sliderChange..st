updating
sliderChange: aSliderChange

	super sliderChange: aSliderChange.
	  
	"Slider button extent indicates pageStep."
	aSliderChange = #stepsChange
		ifTrue: [self updateSliderButton].