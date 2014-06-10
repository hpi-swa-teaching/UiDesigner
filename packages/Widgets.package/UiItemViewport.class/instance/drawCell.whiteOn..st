drawing - cached
drawCell: aCell whiteOn: aCanvas
	
	aCell ifNil: [^ self].
	
	self selectionBehavior == #selectCells ifTrue: [
		aCanvas
			clipBy: (self boundsAt: aCell)
			during: [:c | c fillColor: Color white]].
		
	self selectionBehavior == #selectRows ifTrue: [
		1 to: self columnCount do: [:colIndex |
			aCanvas
				clipBy: (self boundsAt: colIndex @ aCell y)
				during: [:c | c fillColor: Color white]]].
		
	self selectionBehavior == #selectColumns ifTrue: [
		1 to: self rowCount do: [:rowIndex |
			aCanvas
				clipBy: (self boundsAt: aCell x @ rowIndex)
				during: [:c | c fillColor: Color white]]].