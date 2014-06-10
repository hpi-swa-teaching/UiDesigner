initialization
initializeEventHandler

	super initializeEventHandler.
	
	self connect: self eventHandler signal: #mouseClicked: toSelector: #mouseClickDecoration:.