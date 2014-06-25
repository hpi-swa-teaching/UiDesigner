save/load
openQuitDialog
	
	quitDialog = nil
		ifTrue: [	quitDialog := UiQuitDialog new.
				quitDialog initializeWith: self.
				quitDialog open. ]
		ifFalse: [ quitDialog flashBounds ].
