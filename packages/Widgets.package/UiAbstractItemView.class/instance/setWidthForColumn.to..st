rows/columns - resizing
setWidthForColumn: anIndex to: anInteger

	| col |
	col := self viewport columnAt: anIndex.
	col resizeMode ~= #rigid
		ifTrue: [^ self].
		
	col width: anInteger.
		
	self updateViewportLayout.