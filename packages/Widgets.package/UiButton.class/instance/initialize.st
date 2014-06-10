initialization
initialize

	super initialize.
	
	self initializeEventHandler.
	
	self
		color: (Color gray: 0.85);
		borderColor: (Color gray: 0.3);
		borderWidth: 1;
		extent: 50@25.