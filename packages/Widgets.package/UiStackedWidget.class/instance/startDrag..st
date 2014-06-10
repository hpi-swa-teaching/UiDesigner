edit mode - event handling
startDrag: evt

	| morphToDrag |
	morphToDrag := self currentPage submorphs
		detect: [:m | m bounds containsPoint: evt position]
		ifNone: [self dragEnabled
			ifTrue: [self]
			ifFalse: [nil]].
			
	morphToDrag ifNil: [^ self].
	
	evt redButtonPressed
		ifTrue: [evt hand grabMorph: morphToDrag].