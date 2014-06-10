events
onEditKeyPressed

	| cell index |
	cell := self selection currentCell.
	index := self modelIndexFor: cell.
	index ifNil: [^ self].

	(self editTriggers includes: #editKeyPressed)
		ifTrue: [self beginEditCell: cell].
	
	"Toggle checkbox if any."
	self flag: #mixedFeatures. "mt: Really mix cell edit mode with #checked property?"
	index checkable ifTrue: [
		((self morphAt: cell) valueOfProperty: #checkBox) ifNotNil: [:chk | chk toggle]].