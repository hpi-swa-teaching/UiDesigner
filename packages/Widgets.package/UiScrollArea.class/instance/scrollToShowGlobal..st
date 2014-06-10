scrolling
scrollToShowGlobal: aGlobalRectangle

	self scrollToShow: 
		(self widget bounds: aGlobalRectangle from: self world).