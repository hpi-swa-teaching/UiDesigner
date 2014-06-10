adding
addTextList: someLabels

	| wasEmpty |
	wasEmpty := listWidget items isEmpty.
	
	listWidget addTextList: someLabels.
	
	(wasEmpty and: [self readOnly])
		ifTrue: [self currentIndex: 1]