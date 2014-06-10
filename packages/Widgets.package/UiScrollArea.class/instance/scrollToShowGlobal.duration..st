scrolling
scrollToShowGlobal: aGlobalRectangle duration: milliseconds

	self
		scrollToShow: (self widget bounds: aGlobalRectangle from: self world)
		duration: milliseconds.