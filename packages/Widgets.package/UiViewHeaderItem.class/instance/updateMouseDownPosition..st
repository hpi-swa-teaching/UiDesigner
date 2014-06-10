updating
updateMouseDownPosition: aMouseEvent

	(self isMouseInResizeRect: aMouseEvent)
		ifTrue: [mouseDownPosition := aMouseEvent position]	.