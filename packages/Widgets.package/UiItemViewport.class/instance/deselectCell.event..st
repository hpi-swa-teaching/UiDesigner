selection
deselectCell: aCell event: aUserInputEvent

	| morph |
	morph := self morphAt: aCell.

	(morph valueOfProperty: #selectable) ifTrue: [
		self selection remove: aCell event: aUserInputEvent].