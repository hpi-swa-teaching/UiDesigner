selection
selectCell: aCell event: aUserInputEvent

	| morph |
	morph := self morphAt: aCell.
	
	"Update selection..."
	(morph valueOfProperty: #selectable) ifTrue: [
		"...for single cells."
		self selection add: aCell event: aUserInputEvent.
		(morph hasProperty: #isGroupSeparator) ifTrue: [
			"...for whole groups."
			self selection cells: (
				self selection cells, 
				((self selectChildrenForGroup: (self rowAt: aCell y))
					select: [:rowInfo | rowInfo visible]
					thenCollect: [:rowInfo | self cellIndexFromRow: rowInfo]))]].