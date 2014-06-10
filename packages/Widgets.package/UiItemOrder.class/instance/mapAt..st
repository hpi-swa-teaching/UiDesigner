accessing
mapAt: anIndex
	
	^ self map
		ifNil: [anIndex]
		ifNotNil: [:m | m at: anIndex]