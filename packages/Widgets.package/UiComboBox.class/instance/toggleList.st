private
toggleList

	(button checked or: [arrowButton checked])
		ifTrue: [self showList]
		ifFalse: [self hideList].