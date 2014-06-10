actions
finishSliderMovement: aMouseEvent

	super finishSliderMovement: aMouseEvent.  
	
	(self innerBounds containsPoint: aMouseEvent position)
		ifFalse: [self flattenButtons].