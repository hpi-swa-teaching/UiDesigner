events
mouseClickCell: evt

	| cell index |
	cell := self cellIndexFromPoint: evt position.
	index := self modelIndexFor: cell.
	index ifNil: [^ self].
	
	self
		clicked: index;
		activated: index.
	
	"Open context menu."
	evt yellowButtonPressed ifTrue: [self menuRequestedAt: evt position on: index].
	
	"Handle click on checkbox."
	self flag: #ugly.
	index checkable ifTrue: [((self morphAt: cell) valueOfProperty: #checkBox) ifNotNil: [:chk |
		(chk bounds containsPoint: evt position) ifTrue: [chk toggle]]].