as yet unclassified
revertUntil: item
	
	| list lastItem |
	
	[lastItem ~= item] whileTrue: [
		list := self ui undoComboBox list.
		lastItem := list items last.
		self undoAction.
		
	].
	
	
	