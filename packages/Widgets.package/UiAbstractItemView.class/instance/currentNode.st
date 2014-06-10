selection - manual
currentNode

	^ self selection currentIndex
		ifNotNil: [:index | index node]