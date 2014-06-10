drawing
drawGripOn: aCanvas at: aPoint
	"Draws a single grip. Considers orientation."
	
	| rect |
	rect := (aPoint extent: (
		self orientation == #horizontal
			ifTrue: [6 @ self height]
			ifFalse: [self width @ 6])) insetBy: 2.
	
	aCanvas
		frameRectangle: rect
		color: (Color gray: 0.3).
	
		aCanvas
			line: rect bottomLeft + (1@ -1)
			to: rect bottomRight - (1@1)
			color: (Color gray: 0.6).
		
		aCanvas
			line: rect bottomRight - (1@1)
			to: rect topRight + (-1@1)
			color: (Color gray: 0.6).