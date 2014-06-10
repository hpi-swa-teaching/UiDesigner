initialization
initialize

	super initialize.
	
	text := TextMorph new.
	text contents: 'Label'.
	text lock.
	
	super color: Color transparent.
	
	self
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		updateSubmorphs.