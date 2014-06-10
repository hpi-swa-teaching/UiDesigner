accessing
traversalMode: aSymbol
	"#depthFirst, #breadthFirst"

	traversalMode = aSymbol ifTrue: [^ self].
	traversalMode := aSymbol.
	self reset.