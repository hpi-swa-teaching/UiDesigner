events - in-place editing
endEditItem: anItem acceptChanges: aBoolean

	| index editedItem |
	index := anItem valueOfProperty: #modelIndex.
	
	index isInEditMode ifFalse: [^ false].

	aBoolean ifTrue: [	
		"Write changes to model."
		index spec editorFinisher
			value: anItem
			value: index node].

	aBoolean ifFalse: [
		"Abort editing."
		editedItem := index item.
		self replaceMorphWith: editedItem atIndex: index.
		self updateLayout].

	index isInEditMode: false.
	aBoolean ifTrue: [self edited: index].
	
	self grabKeyboard.
	
	^ true