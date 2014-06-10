layouting
updateScrollingOffset

	anchoredSelection = self selection
		ifTrue: [self scrollToShowSelection]
		ifFalse: [anchoredSelection := nil].