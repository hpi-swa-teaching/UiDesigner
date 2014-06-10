headers - add/remove
verticalHeaderVisible: aBoolean

	aBoolean
		ifTrue: [self addVerticalHeader]
		ifFalse: [self removeVerticalHeader].