initialization
initializeEventHandler

	self eventHandler ifNotNil: [^ self].

	self eventHandler: UiEventHandler new.

	"Recognize drag start."
	self connect: self eventHandler signal: #mousePressed: toSelector: #updateMouseDownPosition:.

	"Update cursor."
	self connect: self eventHandler signal: #mouseMoved: toSelector: #updateMouseCursor:.
	self connect: self eventHandler signal: #mouseLeft: toSelector: #resetMouseCursor:.
	self connect: self eventHandler signal: #mouseReleased: toSelector: #resetMouseCursor:.

	"Trigger resize actions."
	self connect: self eventHandler signal: #mouseMoved: toSelector: #resizeByEvent:.
	self connect: self eventHandler signal: #mouseDoubleClicked: toSelector: #resizeToShrinkWrapByEvent:.