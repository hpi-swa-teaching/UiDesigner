as yet unclassified
editorForKind: listOrClass

	^ (listOrClass isKindOf: Collection)
		ifTrue: [(templates at: Array) value: listOrClass]
		ifFalse: [(templates at: listOrClass) value]