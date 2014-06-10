rows/columns - resizing
setOptimalHeightForRow: anIndex
	"Resize a row to its contents."

	| row |
	row := self viewport rowAt: anIndex.
	row resizeMode ~= #rigid
		ifTrue: [^ self].
		
	row height: row optimalSize.
		
	self updateViewportLayout.