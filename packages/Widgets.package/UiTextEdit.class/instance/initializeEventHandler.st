initialization
initializeEventHandler

	super initializeEventHandler.
	
	"Need the widget right before setting up the event handler connections."
	self
		model: self textModelClass new;
		widget: (self textMorphClass on: self).
	
	self connect: self eventHandler signal: #mouseClicked: toSelector: #grabKeyboard.
	self connect: self eventHandler signal: #mouseDoubleClicked: toSelector: #selectAll.

"	self connect: self eventHandler signal: #focusReceived toSelector: #updateFocusColor: pattern: #(=true).
	self connect: self eventHandler signal: #focusLost toSelector: #updateFocusColor: pattern: #(=false)."