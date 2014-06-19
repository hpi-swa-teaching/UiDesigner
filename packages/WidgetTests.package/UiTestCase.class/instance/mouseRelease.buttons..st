events
mouseRelease: aMorph buttons: someMouseButtons

	self
		simulateMouseEvent: #mouseUp
		at: aMorph center
		buttons: someMouseButtons
		start: 0@0
		morph: aMorph.