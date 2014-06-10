initialization
initializeEventHandler

	super initializeEventHandler.
	
	self eventHandler grabKeyboardOnMouseEnter: true.
	
	self connect: self eventHandler signal: #focusLost toSelector: #restoreCursor.