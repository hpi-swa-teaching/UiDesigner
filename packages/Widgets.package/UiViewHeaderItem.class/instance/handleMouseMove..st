events-processing
handleMouseMove: anEvent
	"Receive any mouse move event."
	
	super handleMouseMove: anEvent.
	
	anEvent wasHandled not
		ifTrue: [self mouseMove: anEvent. anEvent wasHandled: true].