drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	"Draw grips."
	((self orientation == #horizontal
		and: [self width >= 16]) or: [
		(self orientation == #vertical
			and: [self height >= 16])])
				ifTrue: [self drawGripsOn: aCanvas].