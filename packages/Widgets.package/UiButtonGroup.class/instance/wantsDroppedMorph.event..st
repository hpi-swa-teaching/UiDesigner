dropping/grabbing
wantsDroppedMorph: aMorph event: evt

	self editMode ifFalse: [^ false].

	(((aMorph isKindOf: TransferMorph)
		and: [UiButton subclasses includes: (aMorph passenger first at: #class)])
		or: [aMorph isKindOf: UiButton])
		ifTrue: [^ super wantsDroppedMorph: aMorph event: evt].
	
	^ false