save/load
openQuitDialog

	quitDialog = nil
		ifTrue: [	
			quitDialog := UiQuitDialog new.
			quitDialog initializeWith: self.
			quitDialog open. ]
		ifFalse: [
			quitDialog owner delete. 
			quitDialog delete.
			quitDialog := UiQuitDialog new.
			quitDialog initializeWith: self.
			quitDialog open. ].
