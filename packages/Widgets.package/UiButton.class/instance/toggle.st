actions
toggle

	(self autoExclusive and: [self checked])
		ifTrue: ["Must not toggle." ^ self].
	
	self checked: self checked not.