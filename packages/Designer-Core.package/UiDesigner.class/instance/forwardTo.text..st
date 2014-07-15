history
forwardTo: index text: someText

	| list lastItem item |
	(self ui redoComboBox button checked or: [self ui redoComboBox arrowButton checked])
		ifTrue: [
			item := self ui redoComboBox list items at: index.
			
			[lastItem ~= item] whileTrue: [
				list := self ui redoComboBox list.
				lastItem := list items first.
				self redoAction.].
			self ui redoComboBox currentIndex: 0]
	
	
	