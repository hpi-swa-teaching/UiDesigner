expand/collapse - private
expandIndexSilently: aModelIndex checkParents: aBoolean

	| row |
	aModelIndex ifNil: [^ #()].
	
	aBoolean ifTrue: [
		"Ensure that all parent indices are expanded too."
		aModelIndex parent ifNotNil: [:parent |
			self expandIndexSilently: parent checkParents: true]].
	
	row := self viewport rowFor: aModelIndex.
	row isExpanded ifTrue: [ ^ #()].

	row items first setProperty: #isExpanded toValue: true.

	^ self
		fillViewportFor: row firstModelIndex
		animated: self isAnimated