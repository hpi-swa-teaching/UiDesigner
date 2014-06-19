events
mouseWheel: aMorph direction: aSymbol

	self
		keyStroke: aMorph
		key: (aSymbol = #up
			ifTrue: [Character arrowUp]
			ifFalse: [Character arrowDown])
		modifiers: #(ctrl).