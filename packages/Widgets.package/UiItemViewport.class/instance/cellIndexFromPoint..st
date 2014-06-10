rows/columns - to cell
cellIndexFromPoint: aPoint
	"Given a point in pixel coordinates."
	
	| origin cellIndex |
	origin := self topLeft.
	cellIndex := 0@0.
	self rowsDo: [:rowInfo |
		cellIndex := 0 @ (cellIndex y + 1).
		rowInfo visible ifTrue: [
			self columnsDo: [:colInfo |
				cellIndex := cellIndex + (1@0).
				colInfo visible ifTrue: [
					(origin <= aPoint and: [aPoint < (origin + (colInfo width @ rowInfo height))])
						ifTrue: [^ cellIndex].
					origin := origin translateBy: colInfo width @ 0]].
			origin := self left @ (origin y + rowInfo height)]].
	
	^ nil