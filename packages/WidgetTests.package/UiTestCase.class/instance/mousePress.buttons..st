events
mousePress: aMorph buttons: someMouseButtons

	self
		simulateMouseEvent: #mouseDown
		at: aMorph center
		buttons: someMouseButtons
		start: 0@0
		morph: aMorph.