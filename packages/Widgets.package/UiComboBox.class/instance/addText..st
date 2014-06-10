adding
addText: aLabel

	listWidget addText: aLabel.
	
	(listWidget items size = 1 and: [self readOnly])
		ifTrue: [self currentIndex: 1]