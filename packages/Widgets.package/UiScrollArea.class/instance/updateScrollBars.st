layouting
updateScrollBars

	self widget ifNil: [^ self].
	
	self horizontalScrollBar
		maximum: (self widget width * self transformMorph scale - self transformMorph width max: 0);
		pageStep: self transformMorph width;
		currentValue: self transformMorph offset x.
	
	self verticalScrollBar
		maximum: (self widget height * self transformMorph scale - self transformMorph height max: 0);
		pageStep: self transformMorph height;
		currentValue: self transformMorph offset y.