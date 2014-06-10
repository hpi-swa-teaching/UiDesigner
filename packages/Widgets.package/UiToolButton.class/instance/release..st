actions
release: aMouseEvent

	(self bounds containsPoint: aMouseEvent position)
		ifFalse: [self flatten].
		
	super release: aMouseEvent.