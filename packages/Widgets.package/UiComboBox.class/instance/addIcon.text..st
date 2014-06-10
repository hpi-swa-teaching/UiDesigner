adding
addIcon: anIcon text: aLabel

	listWidget addIcon: anIcon text: aLabel.
		
	(listWidget items size = 1 and: [self readOnly])
		ifTrue: [self currentIndex: 1]