rows/columns - resizing
setOptimalWidthForColumn: anIndex

	| col |
	col := self viewport columnAt: anIndex.
	col resizeMode ~= #rigid
		ifTrue: [^ self].
		
	col width: col optimalSize.
		
	self updateViewportLayout.