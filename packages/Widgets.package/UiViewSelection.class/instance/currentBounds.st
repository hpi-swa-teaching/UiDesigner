accessing - pixel
currentBounds
	"Returns the global bounds of the current cell bounds according to #selectionBehavior."
	
	| cb |
	cb := self viewport boundsFor: self currentCell.
	^ (self viewport localPointToGlobal: cb topLeft)
		extent: cb extent  