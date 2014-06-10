accessing - model index
selectedIndices

	^ (self cells collect: [:cellIndex | self viewport modelIndexFor: cellIndex])
		reject: [:modelindex | modelindex isNil]