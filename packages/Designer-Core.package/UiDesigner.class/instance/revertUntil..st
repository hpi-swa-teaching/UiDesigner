history
revertUntil: item
	
	| list lastItem |
	[lastItem ~= item] whileTrue: [
		list := self ui undoComboBox list.
		lastItem := list items first.
		self undoAction.].
	
	
	