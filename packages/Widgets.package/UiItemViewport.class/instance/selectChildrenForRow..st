rows/columns - to info
selectChildrenForRow: aRowInfo
	
	| foundFirst predecessors rowsToSelect |
	foundFirst := false.
	predecessors := {aRowInfo} asOrderedCollection.
	rowsToSelect := OrderedCollection new.

	rows anySatisfy: [:row |
		self flag: #slow.
		(predecessors anySatisfy: [:pred | row parentModelIndex = pred firstModelIndex])
			ifTrue: [
				foundFirst := true.
				row isSeparator ifFalse: [predecessors add: row].
				rowsToSelect add: row.
				false]
			ifFalse: [foundFirst]].

	^ rowsToSelect