history
forwardTo: item
	
	| list lastItem |
	[lastItem ~= item] whileTrue: [
		list := self ui redoComboBox list.
		lastItem := list items first.
		self redoAction.
		.].
	
	
	