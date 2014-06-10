initialization
initialize

	super initialize.
	
	self
		color: (Color gray: 0.9);
		changeProportionalLayout;
		listCentering: #center;
		fadeOutInstantly.
		
	self eventHandler setProperty: #handlesMouseStillDown toValue: [true].
	self eventHandler setProperty: #handlesKeyboard toValue: [false].
	
	self connect: self eventHandler signal: #focusReceived toSelector: #passFocusToOwner.