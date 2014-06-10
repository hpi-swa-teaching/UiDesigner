actions
resizeToShrinkWrapByEvent: aMouseEvent

	(self isMouseInResizeRect: aMouseEvent)
		ifTrue: [self resizedToShrinkWrap].