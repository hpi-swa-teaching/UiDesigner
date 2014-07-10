dropping/grabbing
aboutToBeGrabbedBy: aHand
	| widgetOffsetOffHand |
	
	widgetOffsetOffHand := 3@3.
	super aboutToBeGrabbedBy: aHand.
	self align: self topLeft with: aHand topLeft - widgetOffsetOffHand.
	