events
mouseDoubleClickCell: evt

	| cell index |
	cell := self cellIndexFromPoint: evt position.
	index := self modelIndexFor: cell.
	index ifNil: [^ self].
	
	self
		doubleClicked: index;
		activated: index.
		
	(self editTriggers includes: #doubleClicked)
		ifTrue: [self beginEditItem: (self morphAt: cell)].