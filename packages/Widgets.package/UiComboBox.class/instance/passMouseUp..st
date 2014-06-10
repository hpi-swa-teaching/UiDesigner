event handling
passMouseUp: aMouseEvent
	"Modify the event position so that the buttons will not ignore the mouse up."
	
	| oldPos |
	(self bounds containsPoint: aMouseEvent position)
		ifFalse: [^ false].
	
	oldPos := aMouseEvent position.
	
	aMouseEvent setPosition: button center.
	button release: aMouseEvent.
	aMouseEvent setPosition: arrowButton center.
	arrowButton release: aMouseEvent.
	
	aMouseEvent setPosition: readOnlyButton center.    
	readOnlyButton release: aMouseEvent.
	
	aMouseEvent setPosition: oldPos.