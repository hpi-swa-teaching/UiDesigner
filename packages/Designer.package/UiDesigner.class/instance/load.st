save/load
load

	| result |
	result := ListChooser
		chooseItemFrom: UserInterface subclasses
		title: 'Select UI class'.
	
	result ifNotNil: [:designClass |
		self load: designClass].
	
	self resetHistory.