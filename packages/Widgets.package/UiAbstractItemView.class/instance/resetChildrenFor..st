model - callbacks
resetChildrenFor: aParentModelIndex

	| row |
	row := self viewport rowFor: aParentModelIndex.
	row isExpanded ifFalse: [^ self].
		
	self viewport beginChangeLayout.
	
	self viewport removeChildrenForRow: row.
	
	self
		fillViewportFor: aParentModelIndex
		animated: self isAnimated.
	
	self viewport endChangeLayout.