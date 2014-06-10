drawing
drawSubmorphsOn: aCanvas
	
	| drawBlock |
	self shouldDraw ifFalse: [^ self].

	self drawCacheActive
		ifTrue: [^ self drawSubmorphsCachedOn: aCanvas].
		
	drawBlock := [:canvas :morphs |
		morphs withIndexDo: [:morph :rowIndex |
			| rowInfo |
			"Ignores sort order."
			rowInfo := (self rows at: rowIndex).
			rowInfo visible ifTrue: [
				rowInfo isSeparator
					ifTrue: [self drawGroupSeparator: morph on: canvas ]
					ifFalse: [canvas fullDrawMorph: morph]]]].
	
	"Column-wise drawing with clipping."
	self columnsDo: [:columnInfo | 
		columnInfo visible ifTrue: [
			aCanvas
				clipBy: (self columnBoundsFor: columnInfo)
				during: [:c | drawBlock value: c value: columnInfo items]]].