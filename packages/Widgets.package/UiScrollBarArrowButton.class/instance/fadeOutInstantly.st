animations
fadeOutInstantly

	self fadeOut.
	
	fadeAnimation ifNotNil: [fadeAnimation
		stop;
		toEnd].