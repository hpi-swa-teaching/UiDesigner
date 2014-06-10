accessing - model index
selectedIndices

	^ ((self cells asOrderedCollection sorted: [:cell1 :cell2 | cell1 y <= cell2 y or: [cell1 y == cell2 y and: [cell1 x <= cell2 x]]])
		collect: [:cellIndex | self viewport modelIndexFor: cellIndex])
		reject: [:modelindex | modelindex isNil]
