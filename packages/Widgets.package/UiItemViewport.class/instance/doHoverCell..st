events
doHoverCell: evt

	self hoveredDropMode: #none.
	
	(self cellIndexFromPoint: evt position) ifNotNil: [:cell |		
		((self morphAt: cell) valueOfProperty: #selectable)
			ifFalse: [self hoveredCell: nil]
			ifTrue: [
				(evt hand submorphs notEmpty and: [self wantsDroppedMorph: evt hand submorphs first event: evt]) ifTrue: [
				self
					doHoverDropTarget: evt
					forCell: cell].
			
			(evt hand submorphs isEmpty or: [self dropEnabled])
				ifTrue: [self hoveredCell: cell]]]
	
	"Allow dropping in an empty view."
	ifNil: [
		self hoveredCell: nil.
		(evt hand submorphs notEmpty and: [self wantsDroppedMorph: evt hand submorphs first event: evt])
			ifTrue: [self hoveredDropMode: #full]].