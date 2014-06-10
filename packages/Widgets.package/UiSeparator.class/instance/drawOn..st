drawing
drawOn: aCanvas
	|start end|
	orientation == #horizontal
		ifTrue: [start:= self left@(self top + (self height/2) rounded). 
				  end:= self right@(self top + (self height/2) rounded)]
		ifFalse:[start:= (self left + (self width/2) rounded)@self top.
				  end:= (self left + (self width/2) rounded)@self bottom].

	super drawOn: aCanvas.
	aCanvas 
		line: start to: end
		width: self breadth
		color: self dashColor
		dashLength: self dashLength
		secondColor: self backgroundColor
		secondDashLength: self backgroundDashLength
		startingOffset: self startingOffset