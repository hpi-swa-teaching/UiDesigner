initialization
initialize

	super initialize.
	self
		color: (Color gray: 0.8);
		changeTableLayout;
		listDirection: #leftToRight;
		borderStyle: (BorderStyle raised width: 1);
		disableTableLayout: true;
		setToAdhereToEdge: #topRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.