accessing
sliderDown: aBoolean
	"Overridden to pass it to the slider button."
	
	super sliderDown: aBoolean.
	sliderButton down: aBoolean.  