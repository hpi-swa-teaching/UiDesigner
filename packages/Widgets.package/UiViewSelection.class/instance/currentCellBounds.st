accessing - pixel
currentCellBounds
	"Returns the global bounds of the current cell bounds."
	
	| cb |
	cb := self viewport cellBoundsFor: self currentCell.
	^ (self viewport localPointToGlobal: cb topLeft)
		extent: cb extent  