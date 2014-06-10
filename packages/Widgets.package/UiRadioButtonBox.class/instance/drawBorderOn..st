drawing
drawBorderOn: aCanvas

	| color1 color2 |
	(self down or: [self checked])
		ifTrue: [
			color1 := self color twiceDarker.
			color2 := self color twiceLighter]
		ifFalse: [
			color1 := self color twiceLighter.
			color2 := self color twiceDarker].
		
	aCanvas
		frameOval: self bounds
		color: color1.
		
	aCanvas clipBy: (self bounds translateBy: 0 @ (self bounds height * 0.75)) during: [:c1 |
		c1
			frameOval: self bounds
			color: color2].
		
	aCanvas clipBy: (self bounds translateBy: (self bounds width * 0.75) @ 0) during: [:c1 |
		c1
			frameOval: self bounds
			color: color2].