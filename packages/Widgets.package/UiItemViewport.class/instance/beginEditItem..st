events - in-place editing
beginEditItem: anItem

	| index editor |
	index := anItem valueOfProperty: #modelIndex.
	
	(index editable not or: [index isInEditMode])
		ifTrue: [^ false "no further editing possible"].
	
	editor := index editor.
	
	self replaceMorphWith: editor atIndex: index.
	
	index spec editorAcceptSignal ifNotNil: [:s |
		self connect: editor signal: s toSelector: #endEditItem:acceptChanges: pattern: #(0 =true)].
	index spec editorRevertSignal ifNotNil: [:s |
		self connect: editor signal: s toSelector: #endEditItem:acceptChanges: pattern: #(0 =false)].
	
	index isInEditMode: true.
	
	self updateLayout.
	
	editor grabKeyboard.
	
	^ true