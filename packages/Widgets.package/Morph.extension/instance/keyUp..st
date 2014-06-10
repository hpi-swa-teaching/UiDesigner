*widgets-events-override
keyUp: anEvent
	"Handle a key up event. "
	
	self eventHandler isEventHandler
		ifTrue: [self eventHandler keyUp: anEvent fromMorph: self].