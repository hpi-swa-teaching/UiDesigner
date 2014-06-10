selection
currentItem
	
	self currentRow = 0
		ifTrue: [^ nil].

	^ self currentRow
		ifNotNil: [:cc | self items at: cc]