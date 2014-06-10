rows/columns - to pixel
topForRow: aRowInfo

	| result |
	aRowInfo visible ifFalse: [^ 0].
	
	result := self top.
	self rowsDo: [:row |
		row visible ifTrue: [
			row = aRowInfo ifTrue: [^ result].
			result := result + row height]].
	
	Error signal: 'Row info not found!'.