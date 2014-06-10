initialization
initialize

	super initialize.
	
	tracking := true.
	orientation := #horizontal.
	minimum := 0.
	maximum := 100.
	pageStep := 10.
	currentValue := 0.
	sliderPosition := 0.
	singleStep := 1.
	
	self
		color: Color transparent;
		extent: 100@14.