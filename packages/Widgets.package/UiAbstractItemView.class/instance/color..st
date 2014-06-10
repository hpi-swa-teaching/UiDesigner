accessing
color: aColor

	self transformMorph ifNotNil: [:tm |
		tm color: aColor].
	
	vHeaderScroller color: aColor.
	hHeaderScroller color: aColor.
	
	verticalScrollBar color: aColor.
	horizontalScrollBar color: aColor.