initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.
	
	self eventHandler setProperty: #handlesMouseWheel toValue: [true].
	
	self connect: self eventHandler signal: #mouseWheelUp: to: self verticalScrollBar selector: #decreaseValueBySingleStep.
	self connect: self eventHandler signal: #mouseWheelDown: to: self verticalScrollBar selector: #increaseValueBySingleStep.