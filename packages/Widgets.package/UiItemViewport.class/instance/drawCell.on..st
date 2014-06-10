drawing - cached
drawCell: aCell on: aCanvas
	
	aCell ifNil: [^ self].
	
	self selectionBehavior == #selectCells ifTrue: [
		aCanvas
			clipBy: (self boundsAt: aCell)
			during: [:c | c fullDrawMorph: (self morphAt: aCell)]].
		
	self selectionBehavior == #selectRows ifTrue: [
		self columnOrder items: (self rowAt: aCell y) items withIndexDo: [:morph :colIndex |
			aCanvas
				clipBy: (self boundsAt: colIndex @ aCell y)
				during: [:c | c fullDrawMorph: morph]]].
		
	self selectionBehavior == #selectColumns ifTrue: [
		self rowOrder items: (self columnAt: aCell x) items withIndexDo: [:morph :rowIndex |
			aCanvas
				clipBy: (self boundsAt: aCell x @ rowIndex)
				during: [:c | c fullDrawMorph: morph]]].