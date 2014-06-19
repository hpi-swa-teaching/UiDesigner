dropping/grabbing
aboutToBeGrabbedBy: aHand

	super aboutToBeGrabbedBy: aHand.
	self align: self topLeft with: aHand topLeft.
	