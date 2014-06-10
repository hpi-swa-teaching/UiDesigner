expand/collapse - private
expandAllIndicesSilentlyBreadthFirst: someModelIndices

	| nextIndices |
	nextIndices := someModelIndices asOrderedCollection.
	[nextIndices notEmpty] whileTrue: [
		| nextIndex |
		nextIndex := nextIndices removeFirst.
		nextIndex hasChildren ifTrue: [
			(self expandIndexSilently: nextIndex) in: [:newRows |
				nextIndices addAll: (newRows gather: [:group |
					group value collect: [:row | row first "column" key "indexToItem"]])].
			"nextIndices size > 1000 ifTrue: [
				nextIndices := #().
				Transcript cr; show: 'Too many nodes (> 1000)! Operation cancelled.']"]].