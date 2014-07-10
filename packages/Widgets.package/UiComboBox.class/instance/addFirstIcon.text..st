adding
addFirstIcon: anIcon text: aLabel

	listWidget addFirstIcon: anIcon text: aLabel.
		
	(listWidget items size = 1 and: [self readOnly])
		ifTrue: [self currentIndex: 1]