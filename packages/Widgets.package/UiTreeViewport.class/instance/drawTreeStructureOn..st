drawing
drawTreeStructureOn: aCanvas
	
	columns ifEmpty: [^ self].
	
	(self columnBoundsAt: 1) right < aCanvas clipRect left
		ifTrue: [^ self].
	
	((self visibleRowsIndices: aCanvas)
		collect: [:rowIndex | rowIndex -> (self rowAt: rowIndex)])
		select: [:rowAssoc | rowAssoc value visible
			and: [self rootIsDecorated or: [rowAssoc value parentModelIndex notNil]]]
		thenDo: [:rowAssoc |
		| colIndex item cellBounds form |
		colIndex := self columnOrder unmapIndex: 1.
		cellBounds := self cellBoundsFor: colIndex@rowAssoc key.
		item := self columnOrder items: rowAssoc value items at: colIndex.
		form := (item valueOfProperty: #hasChildren)
			ifFalse: [nil]
			ifTrue: [(item valueOfProperty: #isExpanded)
				ifFalse: [UiButtonIcons bulletArrowRightSunkenIcon]
				ifTrue: [UiButtonIcons bulletArrowDownSunkenIcon]].

		form ifNotNil: [
			aCanvas
				translucentImage: form
				at: (cellBounds left + 4 + ((item valueOfProperty: #indent) - 12))
					@ (cellBounds top + (18 "cellBounds height" - form height // 2))]].