initialization
initializeEventHandler

	super initializeEventHandler.
	self eventHandler setProperty: #handlesMouseOver toValue: [self enabled].
	
	self connect: self eventHandler signal: #mouseEntered: toSelector: #raise.
	self connect: self eventHandler signal: #mouseLeft: toSelector: #flatten.
	
	"No keyboard focus for tool buttons."
	self eventHandler disconnectSignal: #mousePressed: from: self selector: #grabKeyboard.