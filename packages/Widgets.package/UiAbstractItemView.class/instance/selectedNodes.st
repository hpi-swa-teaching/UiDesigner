selection - manual
selectedNodes

	^ (self selection selectedIndices collect: [:index |
		index node]) asSet asOrderedCollection