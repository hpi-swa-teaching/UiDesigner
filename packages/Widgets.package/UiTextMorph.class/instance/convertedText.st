converting
convertedText

	| v |
	v := self convertedValue.
	(v isString or: [v isText])
		ifTrue: [^ v]
		ifFalse: [^ v asString].
	