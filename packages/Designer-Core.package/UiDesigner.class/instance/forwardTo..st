history
forwardTo: item
	
	| list lastItem |
	
	[lastItem ~= item] whileTrue: [
		list := self ui undoComboBox list.
		lastItem := list items last.
		self redoAction.
		
	].
	
	
	