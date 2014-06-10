initialization
initialize

	self
		initializeSupportMorphs;
		initializeEventHandler.

	super initialize.

	self
		changeTableLayout;
		listCentering: #center.
		
	self
		addMorphBack: pagingMorph;
		addMorphFront: sliderButton.