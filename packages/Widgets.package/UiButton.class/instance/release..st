actions
release: aMouseEvent

	(self bounds containsPoint: aMouseEvent position)
		ifTrue: [self down: false; released; clicked: self checked]
		ifFalse: [down := false. self redrawLater].