initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.

	self connect: self eventHandler signal: #mousePressed: toSelector: #startSliderMovement:.
	self connect: self eventHandler signal: #mouseMoved: toSelector: #doSliderMovement:.
	self connect: self eventHandler signal: #mouseReleased: toSelector: #finishSliderMovement:.

	self connect: self eventHandler signal: #mousePressed: toSelector: #jumpToValue:.

	"Keyboard interaction."
	self eventHandler on: Character arrowLeft send: #decreaseValueBySingleStep to: self.
	self eventHandler on: Character arrowRight send: #increaseValueBySingleStep to: self.
	self eventHandler on: Character arrowDown send: #decreaseValueBySingleStep to: self.
	self eventHandler on: Character arrowUp send: #increaseValueBySingleStep to: self.
	
	self eventHandler on: Character pageUp send: #increaseValueByPageStep to: self.
	self eventHandler on: Character pageDown send: #decreaseValueByPageStep to: self.
	
	self eventHandler on: Character home send: #setValueToMinimum to: self.
	self eventHandler on: Character end send: #setValueToMaximum to: self.