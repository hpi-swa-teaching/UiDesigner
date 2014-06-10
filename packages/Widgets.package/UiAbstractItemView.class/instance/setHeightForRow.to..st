rows/columns - resizing
setHeightForRow: anIndex to: anInteger

	| row |
	row := self viewport rowAt: anIndex.
	row resizeMode ~= #rigid
		ifTrue: [^ self].
		
	row height: anInteger.
		
	self updateViewportLayout.