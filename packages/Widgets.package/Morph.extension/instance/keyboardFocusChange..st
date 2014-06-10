*widgets-events-override
keyboardFocusChange: aBoolean
	"The message is sent to a morph when its keyboard focus change. The given argument indicates that the receiver is gaining keyboard focus (versus losing) the keyboard focus. Morphs that accept keystrokes should change their appearance in some way when they are the current keyboard focus."
	
	self eventHandler isEventHandler
		ifTrue: [self eventHandler keyboardFocusChange: aBoolean fromMorph: self].