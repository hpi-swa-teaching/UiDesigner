rows/columns - to cell
cellIndexFromPoint: aPoint
	"Given a point in pixel coordinates."
	
	| cell |
	self orientation = #default ifTrue: [
		| offset cellIndex |
		offset := self topLeft.
		cellIndex := 1@0.
		self rowsDo: [:rowInfo | 
			cellIndex := cellIndex + (0@1).
			rowInfo visible ifTrue: [
				(offset <= aPoint and: [aPoint < (offset + (self width @ rowInfo height))])
					ifTrue: [^ cellIndex].
				offset := offset translateBy: 0 @ rowInfo height]].
	
		^ nil].
	
	self orientation = #horizontalSingleRow ifTrue: [
		| localPt | 
		localPt := aPoint - self topLeft.
		cellToBounds first withIndexDo: [:cellSpec :colIndex |
			cellSpec ifNotNil: [cellSpec first x + cellSpec second x >= localPt x ifTrue: [^ colIndex @ 1]]].
		^ nil].
	
	cell := ((aPoint - self topLeft) // maxItemExtent) + (1@1).

	((cell x > vColumnCount or: [cell y > vRowCount])
		or: [((cellToBounds at: cell y) at: cell x) isNil])
			ifTrue: [^ nil].
	
	^ cell