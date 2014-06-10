initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.

	self eventHandler
		mouseDownPriority: 25; "Catch all clicks for my cells to trigger context menu."
		setProperty: #handlesMouseWheel toValue: [true];
		grabKeyboardOnMouseEnter: true.
	
	self connect: self eventHandler signal: #mouseLeft: toSelector: #hoveredCell: pattern: #(=nil).
	self connect: self eventHandler signal: #mouseLeft: toSelector: #hoveredDropMode: pattern: #(=none).
	self connect: self eventHandler signal: #mouseLeftDragging: toSelector: #hoveredCell: pattern: #(=nil).
	self connect: self eventHandler signal: #mouseLeftDragging: toSelector: #hoveredDropMode: pattern: #(=none).

	self connect: self eventHandler signal: #mousePressed: toSelector: #mousePressCell:.
	self connect: self eventHandler signal: #mouseReleased: toSelector: #mouseReleaseCell:.
	self connect: self eventHandler signal: #mouseClicked: toSelector: #mouseClickCell:.
	self connect: self eventHandler signal: #mouseDoubleClicked: toSelector: #mouseDoubleClickCell:.
	self connect: self eventHandler signal: #mouseDragStarted: toSelector: #mouseStartDragCell:.
	self connect: self eventHandler signal: #mouseMoved: toSelector: #doHoverCell:.
	
	self connect: self eventHandler signal: #returnStroked toSelector: #activateCurrentCell.
	self connect: self eventHandler signal: #keyStroked: toSelector: #navigateByKey:.

	"Pass some events back to the view."
	self connect: self eventHandler signal: #mouseWheelUp: toSelector: #mouseWheelUp.
	self connect: self eventHandler signal: #mouseWheelDown: toSelector: #mouseWheelDown.

	self connect: self eventHandler signal: #keyStroked: toSelector: #onKeyStroked:.
	self connect: self eventHandler signal: #keyPressed: toSelector: #onKeyPressed:.	

	"Keyboard shortcuts"
	self flag: #hardcoded. "mt: Shortcuts should be configurable? Esp. the edit key? This is normally F2 under MS Windows..."
	self eventHandler on: #cmd -> $a send: #selectAll to: self.
	self eventHandler on: #cmd -> $c send: #copySelectedTextToClipboard to: self.
	self eventHandler on: Character space send: #onEditKeyPressed to: self.