initialization
initialize

	super initialize.
	
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 4;
		layoutInset: (2@0 corner: 2@0).
	
	self
		color: (Color gray: 0.8);
		text: 'PushButton'.