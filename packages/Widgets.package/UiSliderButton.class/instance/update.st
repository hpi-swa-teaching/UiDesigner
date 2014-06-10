updating
update

	self extent: 14@14.
	
	self orientation = #horizontal
		ifTrue: [self
			listDirection: #leftToRight;
			hResizing: #rigid;
			vResizing: #spaceFill].
		
	self orientation = #vertical
		ifTrue: [self
			listDirection: #topToBottom;
			hResizing: #spaceFill;
			vResizing: #rigid].