events
doHoverDropTarget: evt forCell: cell

	self orientation == #default
		ifTrue: [^ super doHoverDropTarget: evt forCell: cell].

	"visualize drop target"
	self dragDropSpec ifNotNil: [:spec |
		spec dropMode == #over ifTrue: [
			self hoveredDropMode: #over].
		spec dropMode == #between ifTrue: [
			| cellBounds |
			cellBounds := self cellBoundsFor: cell.
			
			self orientation == #vertical ifTrue: [
				evt position x < (cellBounds left + (cellBounds width // 2))
					ifTrue: [self hoveredDropMode: #inFrontOf]
					ifFalse: [self hoveredDropMode: #after]].
			self orientation == #horizontal ifTrue: [
				evt position y < (cellBounds top + (cellBounds height // 2))
					ifTrue: [self hoveredDropMode: #inFrontOf]
					ifFalse: [self hoveredDropMode: #after]]]].