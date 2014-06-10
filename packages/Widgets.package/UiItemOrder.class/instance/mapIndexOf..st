accessing
mapIndexOf: aMappedIndex
	
	^ self map
		ifNil: [aMappedIndex]
		ifNotNil: [:m | m indexOf: aMappedIndex]