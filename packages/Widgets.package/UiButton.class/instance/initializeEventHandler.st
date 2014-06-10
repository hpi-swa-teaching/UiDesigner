initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.
	
	self eventHandler setProperty: #handlesMouseDown toValue: [self enabled].
	self eventHandler setProperty: #handlesMouseUp toValue: [self enabled].
	
	self connect: self eventHandler signal: #mousePressed: toSelector: #grabKeyboard.
	
	self connect: self eventHandler signal: #mousePressed: toSelector: #press:.
	self connect: self eventHandler signal: #mouseReleased: toSelector: #release:.
	
	self connect: self eventHandler signal: #returnPressed toSelector: #doClick.