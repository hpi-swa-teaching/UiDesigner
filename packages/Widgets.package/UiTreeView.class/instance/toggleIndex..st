expand/collapse - model index
toggleIndex: aModelIndex

	| row |
	aModelIndex ifNil: [^ self].
	aModelIndex hasChildren ifFalse: [^ self].
	
	row := self viewport rowFor: aModelIndex.
	
	self viewport beginChangeLayout.
	
	row isExpanded
		ifTrue: [
			row items first setProperty: #isExpanded toValue: false.
			self viewport removeChildrenForRow: row]
		ifFalse: [
			row items first setProperty: #isExpanded toValue: true.
			self
				fillViewportFor: row firstModelIndex
				animated: self isAnimated].
	
	self viewport endChangeLayout.