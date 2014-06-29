dropping/grabbing
aboutToBeGrabbedBy: aHand

	super aboutToBeGrabbedBy: aHand.
	self align: self topLeft with: aHand topLeft-(3@3).
	