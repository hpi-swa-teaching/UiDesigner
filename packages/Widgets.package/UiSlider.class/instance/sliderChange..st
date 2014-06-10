updating
sliderChange: aSliderChange

	super sliderChange: aSliderChange.
	  
	aSliderChange = #orientationChange
		ifTrue: [self updateSupportMorphs].
	
	(#(rangeChange valueChange) includes: aSliderChange)
		ifTrue: [self updateSliderButton].