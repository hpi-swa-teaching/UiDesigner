drawing
drawCurrentCellOn: aCanvas

	self selection currentCell ifNil: [^ self].
	
	(self selection cells noneSatisfy: [:cell | cell y = self selection currentCell y])
		ifTrue: [^ self
			drawHighlightFrameOn: aCanvas
			bounds: (self boundsFor: self selection currentCell)
			color: self selectionColorAdjusted darker].

	((self selectionBehavior == #selectRows and: [self selection currentCell x > 1]) or: [
		self selectionBehavior == #selectColumns and: [self selection currentCell y > 1]])
		ifTrue: [^ self
			drawHighlightOn: aCanvas
			bounds: (self cellBoundsFor: self selection currentCell)
			color: self selectionColorAdjusted darker].
		
	self
		drawHighlightOn: aCanvas
		bounds: (self boundsFor: self selection currentCell)
		color: self selectionColorAdjusted darker.