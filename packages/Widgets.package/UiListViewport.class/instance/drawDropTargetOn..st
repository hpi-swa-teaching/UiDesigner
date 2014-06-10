drawing
drawDropTargetOn: aCanvas

	| cellBounds |
	self hoveredDropMode == #none ifTrue: [^ self].
	self orientation == #default ifTrue: [^ super drawDropTargetOn: aCanvas].
	self hoveredDropMode == #over ifTrue: [^ super drawDropTargetOn: aCanvas].

	"Visualize drop target."
	cellBounds := self boundsFor: self hoveredCell.
	
	self orientation == #vertical ifTrue: [
		self hoveredDropMode == #inFrontOf ifTrue: [
			^ aCanvas
				line: cellBounds topLeft + (2@0)
				to: cellBounds bottomLeft + (2@0)
				width: 3
				color: self selectionColorAdjusted muchDarker].
		
		self hoveredDropMode == #after ifTrue: [
			^ aCanvas
				line: cellBounds topRight - (2@0)
				to: cellBounds bottomRight - (2@0)
				width: 3
				color: self selectionColorAdjusted muchDarker].
			
		self hoveredDropMode == #full ifTrue: [
			| box |
			box := cellToBounds
				ifEmpty: [self bounds]
				ifNotEmpty: [:ctb | (ctb last reverse detect: [:cell | cell notNil])
					ifNotNil: [:cell | cell first + (cell second x @ 0) extent: 2 @ cell second y]].
			^ aCanvas
				line: box topLeft
				to: box bottomLeft
				width: 3
				color: self selectionColorAdjusted muchDarker]].
		
	self flag: #unfinished:. "mt: handling for horizontal orientation is missing."