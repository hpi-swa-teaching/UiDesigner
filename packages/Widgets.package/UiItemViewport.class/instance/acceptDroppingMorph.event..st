drag/drop
acceptDroppingMorph: aTransformMorph event: event

	| cell |
	cell := self cellIndexFromPoint: event position.
	cell ifNil: [
		^ self
			objectDropped: aTransformMorph passenger
			type: aTransformMorph dragTransferType
			from: aTransformMorph source].
	
	self dragDropSpec dropMode == #over ifTrue: [
		self
			objectDropped: aTransformMorph passenger
			type: aTransformMorph dragTransferType
			from: aTransformMorph source
			on: (self modelIndexFor: cell)].
		
	self dragDropSpec dropMode == #between ifTrue: [
		| cellBounds |
		cellBounds := self cellBoundsFor: cell.
		
		(self dropsBefore: event bounds: cellBounds)
			ifTrue: [
				self
					objectDropped: aTransformMorph passenger
					type: aTransformMorph dragTransferType
					from: aTransformMorph source
					before: (self modelIndexFor: cell)	]
			ifFalse: [
				self
					objectDropped: aTransformMorph passenger
					type: aTransformMorph dragTransferType
					from: aTransformMorph source
					after: (self modelIndexFor: cell)]].