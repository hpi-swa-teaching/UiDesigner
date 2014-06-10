initialization
initialize

	super initialize.
	
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		cellInset: 4;
		layoutInset: (2@0 corner: 2@0).
	
	self
		color: (Color r: 1.0 g: 222/255 b: 0);
		raised: true;
		autoRaise: true;
		text: 'ToolButton';
		updateSubmorphs.