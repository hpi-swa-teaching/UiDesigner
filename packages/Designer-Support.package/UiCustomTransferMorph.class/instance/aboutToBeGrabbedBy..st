dropping/grabbing
aboutToBeGrabbedBy: aHand

	super aboutToBeGrabbedBy: aHand.
	self align: self topLeft with: aHand topLeft-(4@4).
	