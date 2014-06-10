rows/columns - to pixel
leftForColumn: aColumnInfo

	| result |
	aColumnInfo visible ifFalse: [^ 0].
	
	result := self left.
	self columnsDo: [:col |
		col visible ifTrue: [
			col = aColumnInfo ifTrue: [^ result].
			result := result + col width]].
	
	Error signal: 'Column info not found!'.