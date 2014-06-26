event handling
handleDropMorph: anEvent
	self unhighlight.
	super handleDropMorph: anEvent.
	self morphAdded: anEvent contents into: self