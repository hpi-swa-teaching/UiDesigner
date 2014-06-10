updating
updateMouseCursor: aMouseEvent

	(aMouseEvent isMouseLeave or: [aMouseEvent isMouseUp]) ifTrue: [
		mouseDownPosition := nil.
		aMouseEvent hand showTemporaryCursor: nil.
		^ self].

	(mouseDownPosition notNil or: [self isMouseInResizeRect: aMouseEvent])
		ifTrue: [aMouseEvent hand showTemporaryCursor: (self orientation == #horizontal
			ifTrue: [Cursor resizeLeft]
			ifFalse: [Cursor resizeTop])]
		ifFalse: [aMouseEvent hand showTemporaryCursor: nil].