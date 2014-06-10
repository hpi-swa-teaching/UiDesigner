updating
updateLayout

	self orientation = #horizontal
		ifTrue: [self
			extent: self height @ self width;
			hResizing: #spaceFill;
			vResizing: #rigid].
		
	self orientation = #vertical
		ifTrue: [self
			extent: self height @ self width;
			hResizing: #rigid;
			vResizing: #spaceFill].
		
	self redrawLater.