rows/columns - to info
selectChildrenForGroup: aSeparatorRow
	
	| foundFirst predecessors rowsToSelect parentIndex groupIndex |
	aSeparatorRow isSeparator ifFalse: [^ self].
	
	parentIndex := aSeparatorRow parentModelIndex.
	groupIndex := aSeparatorRow items first valueOfProperty: #groupIndex.
	
	foundFirst := false.
	predecessors := {aSeparatorRow} asOrderedCollection.
	rowsToSelect := OrderedCollection new.

	rows anySatisfy: [:row |
		foundFirst
			ifTrue: [(((row isSeparator not and: [row parentModelIndex = parentIndex]) and: [row firstModelIndex groupIndex = groupIndex])
				or: [self flag: #slow. predecessors anySatisfy: [:pred | row parentModelIndex = pred firstModelIndex and: [row isSeparator or: [row firstModelIndex groupIndex = groupIndex]]]])
					ifTrue: [
						row isSeparator ifFalse: [predecessors add: row].
						rowsToSelect add: row.
						false]
					ifFalse: [true]]
			ifFalse: [row = aSeparatorRow ifTrue: [foundFirst := true]. false]].

	^ rowsToSelect