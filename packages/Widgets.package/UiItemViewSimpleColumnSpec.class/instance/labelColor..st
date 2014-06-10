accessing
labelColor: aColor

	aColor ifNil: [^ self].
	
	labelColor := aColor isString
		ifTrue: [Color fromString: aColor]
		ifFalse: [aColor].