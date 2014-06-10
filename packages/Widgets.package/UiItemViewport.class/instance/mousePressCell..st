events
mousePressCell: evt

	| cell morph |
	cell := self cellIndexFromPoint: evt position.
	cell ifNil: [^ self].
	
	((self editTriggers includes: #selectedClicked)
		and: [self selection cells includes: cell])
		ifTrue: [self beginEditCell: cell].
	
	self selectCell: cell event: evt.
	
	"Pass event to item."
	morph := self morphAt: cell.
	morph mouseDown: evt.