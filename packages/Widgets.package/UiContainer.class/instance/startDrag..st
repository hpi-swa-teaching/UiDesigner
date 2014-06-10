event handling
startDrag: evt

	| morphToDrag |
	morphToDrag := self submorphs
		detect: [:m | m bounds containsPoint: evt position]
		ifNone: [self dragEnabled
			ifTrue: [self]
			ifFalse: [nil]].
	
	self changeFocusTo: nil.
			
	morphToDrag ifNil: [^ self].
	
	evt redButtonPressed
		ifTrue: [evt hand grabMorph: morphToDrag].