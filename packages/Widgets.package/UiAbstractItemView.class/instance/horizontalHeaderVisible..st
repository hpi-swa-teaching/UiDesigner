headers - add/remove
horizontalHeaderVisible: aBoolean

	aBoolean
		ifTrue: [self addHorizontalHeader]
		ifFalse: [self removeHorizontalHeader].