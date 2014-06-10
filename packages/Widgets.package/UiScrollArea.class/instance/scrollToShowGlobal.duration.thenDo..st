scrolling
scrollToShowGlobal: aGlobalRectangle duration: milliseconds thenDo: aBlock

	self
		scrollToShow: (self widget bounds: aGlobalRectangle from: self world)
		duration: milliseconds
		thenDo: aBlock.