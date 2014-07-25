initialization
openQuitDialog

	quitDialog = nil
		ifFalse: [quitDialog owner delete. 
				quitDialog delete].
	quitDialog  := UiQuitDialog new.
	quitDialog 
		initializeWith: self;
		open
