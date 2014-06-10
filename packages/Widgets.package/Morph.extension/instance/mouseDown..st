*widgets-events-override
mouseDown: evt 
	"Overridden to suppress #yellowButtonActivity for specific event handlers."

	self eventHandler isEventHandler
		ifTrue: [^ self eventHandler mouseDown: evt fromMorph: self].

	evt yellowButtonPressed
		ifTrue: ["First check for option (menu) click"
			^ self yellowButtonActivity: evt shiftPressed].
	self eventHandler
		ifNotNil: [self eventHandler mouseDown: evt fromMorph: self]
