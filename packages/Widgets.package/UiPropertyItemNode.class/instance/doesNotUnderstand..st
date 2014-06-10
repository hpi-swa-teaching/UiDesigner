error handling
doesNotUnderstand: aMessage

	aMessage arguments size > 1 ifTrue: [
		^ super doesNotUnderstand: aMessage].
	
	aMessage arguments ifEmpty: [
		^ self
			at: aMessage selector
			ifAbsent: [super doesNotUnderstand: aMessage]].
	
	^ self
		at: aMessage selector allButLast
		put: aMessage arguments first