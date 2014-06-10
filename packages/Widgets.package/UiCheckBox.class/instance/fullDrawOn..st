drawing
fullDrawOn: aCanvas

	super fullDrawOn: aCanvas.
	
	"Indicate checking state with an additional tick."
	box notNil & self checked ifTrue: [
		aCanvas
			line: box topLeft + (0@(box height // 2)) + (2@0)
			to: box bottomLeft + ((box width // 2)@0) - (0@2)
			width: 2
			color: (Color gray: 0.3).
		aCanvas
			line: box bottomLeft + ((box width // 2)@0) - (0@2)
			to: box topRight - (2@ -2)
			width: 2
			color: (Color gray: 0.3)].