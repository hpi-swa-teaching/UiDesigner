as yet unclassified
editorForProperty: aSymbol kind: listOrClass

	| editor |
	editor := cache at: aSymbol ifAbsentPut: [self editorForKind: listOrClass].
	editor disconnectAllSignals.
	^ editor