history
revertUntil: item
	
	| list lastItem |
	self halt.
	[lastItem ~= item] whileTrue: [
		list := self ui undoComboBox list.
		lastItem := list items last.
		self undoAction.
		
	].
	
	
	