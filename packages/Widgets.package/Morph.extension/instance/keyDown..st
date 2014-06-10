*widgets-events-override
keyDown: anEvent
	"Handle a key down event. "
	
	self eventHandler isEventHandler
		ifTrue: [self eventHandler keyDown: anEvent fromMorph: self].