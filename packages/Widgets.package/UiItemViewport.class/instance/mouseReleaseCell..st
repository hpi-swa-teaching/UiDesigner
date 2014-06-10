events
mouseReleaseCell: evt

	| cell morph |
	cell := self cellIndexFromPoint: evt position.
	cell ifNil: [^ self].

	self deselectCell: cell event: evt.

	"Pass event to item."
	morph := self morphAt: cell.
	morph mouseUp: evt.