drawing
drawDropTargetOn: aCanvas

	| cellBounds |
	self hoveredDropMode == #none ifTrue: [^ self].
	
	"Visualize drop target."
	self hoveredDropMode == #full ifTrue: [
		| box |
		self flag: #slow. "mt: use cellToBounds cache here?"
		box := self submorphBounds.
		^ aCanvas
			line: self left @ box bottom
			to: self right @ box bottom
			width: 3
			color: self selectionColorAdjusted muchDarker].
	
	cellBounds := self boundsFor: self hoveredCell.
	
	self hoveredDropMode == #over ifTrue: [
		^ UiPlatform current
			canvas: aCanvas
			frameRoundRect: cellBounds
			radius: 3
			width: 2
			color: self selectionColorAdjusted muchDarker].
		
	self hoveredDropMode == #inFrontOf ifTrue: [
		^ aCanvas
			line: cellBounds topLeft + (2@0)
			to: cellBounds topRight - (2@0)
			width: 3
			color: self selectionColorAdjusted muchDarker].
		
	self hoveredDropMode == #after ifTrue: [
		^ aCanvas
			line: cellBounds bottomLeft + (2@0)
			to: cellBounds bottomRight - (2@0)
			width: 3
			color: self selectionColorAdjusted muchDarker].