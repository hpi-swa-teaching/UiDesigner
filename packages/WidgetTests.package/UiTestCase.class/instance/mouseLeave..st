events
mouseLeave: aMorph

	self
		simulateMouseEvent: #mouseLeave
		at: aMorph center
		buttons: #()
		start: 0@0
		morph: aMorph.