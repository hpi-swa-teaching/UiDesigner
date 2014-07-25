history
revertUntil: index text: someText
	
	| list lastItem item |
	(self ui undoComboBox button checked 
		or: [self ui undoComboBox arrowButton checked])
		ifTrue: [
			item := self ui undoComboBox list items at: index.
			[lastItem ~= item] whileTrue: [
				list := self ui undoComboBox list.
				lastItem := list items first.
				self undoAction.].
			self ui redoComboBox currentIndex: 0]
	
	
	