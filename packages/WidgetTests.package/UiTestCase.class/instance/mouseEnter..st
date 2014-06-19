events
mouseEnter: aMorph

	self
		simulateMouseEvent: #mouseEnter
		at: aMorph center
		buttons: #()
		start: 0@0
		morph: aMorph.