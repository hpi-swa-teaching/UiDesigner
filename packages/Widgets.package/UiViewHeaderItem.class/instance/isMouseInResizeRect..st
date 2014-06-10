testing
isMouseInResizeRect: aMouseEvent

	^ (self orientation == #horizontal and: [aMouseEvent position x + 5 > self right])
		or: [self orientation == #vertical and: [aMouseEvent position y + 5 > self bottom]]