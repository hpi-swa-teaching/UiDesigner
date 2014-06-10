initialization
initialize

	super initialize.
	killTime := Time now addSeconds: 5.
	
	self
		color: Color gray;
		textColor: Color white;
		margins: (3@1 corner: 3@0);
		startStepping.