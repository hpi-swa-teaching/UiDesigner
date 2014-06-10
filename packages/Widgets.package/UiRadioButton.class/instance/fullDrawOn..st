drawing
fullDrawOn: aCanvas

	super fullDrawOn: aCanvas.
	
	box notNil & self checked ifTrue: [
		aCanvas
			fillOval: (box bounds insetBy: 3)
			color: (Color gray: 0.3)].