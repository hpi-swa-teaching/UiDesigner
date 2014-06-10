event handling
mouseClickDecoration: evt

	| cell item |
	cell := self cellIndexFromPoint: evt position.
	cell ifNil: [^ self].
	
	item := (self rowAt: cell y) items at: 1.

	"Recognize a click on the decoration."
	(evt position x < item left
		and: [evt position x >= (item left - self indent)])
		ifTrue: [self decorationClicked: (item valueOfProperty: #modelIndex)].