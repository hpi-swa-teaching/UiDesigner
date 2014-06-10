initialization
initialize

	super initialize.
		
	self groupSpec: UiTableViewGroupSpec new.
		
	self
		addMorph: vHeaderScroller;
		addMorph: hHeaderScroller;
		updateLayout.