drawing
redraw
	"Override to use double buffering with BitBlt."
	
	(self usesDrawCache not or: [drawCache isNil])
		ifTrue: [^ self redrawLater].
	
	Display deferUpdates: true.	
	self fullDrawOn: Display getCanvas.
	Display forceToScreen: (self visibleBounds insetBy: (0@0 corner: 1@1)).