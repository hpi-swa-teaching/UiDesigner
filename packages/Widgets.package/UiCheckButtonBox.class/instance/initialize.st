initialization
initialize

	super initialize.
	
	self 
		checkable: false;
		hResizing: #rigid;
		vResizing: #rigid;
		icon: nil; text: nil;
		extent: 12@12.