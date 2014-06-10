accessing - pixel
selectionBounds
	"Returns the global bounds of the current selection according to #selectionBehavior."
	
	| b |
	self cells ifEmpty: [^ 0@0 corner: 1@1].
	
	b := (self cells collect: [:cell | self viewport boundsFor: cell])
		fold: [:rect1 :rect2 | rect1 quickMerge: rect2].
		
	^ (self viewport localPointToGlobal: b topLeft)
		extent: b extent  