save/load
openQuitDialog
	
	| uiQuitDialog |
	uiQuitDialog := UiQuitDialog new..
	uiQuitDialog initializeWith: self.
		
	uiQuitDialog open.
