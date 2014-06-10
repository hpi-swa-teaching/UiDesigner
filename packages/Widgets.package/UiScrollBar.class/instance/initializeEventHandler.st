initialization
initializeEventHandler

	super initializeEventHandler.
	
	self connect: self eventHandler signal: #mouseEntered: toSelector: #raiseButtons.
	self connect: self eventHandler signal: #mouseLeft: toSelector: #flattenButtons.

	"Keyboard interaction."
	self eventHandler on: Character arrowDown send: #increaseValueBySingleStep to: self.
	self eventHandler on: Character arrowUp send: #decreaseValueBySingleStep to: self.
	
	self eventHandler on: Character pageUp send: #decreaseValueByPageStep to: self.
	self eventHandler on: Character pageDown send: #increaseValueByPageStep to: self.