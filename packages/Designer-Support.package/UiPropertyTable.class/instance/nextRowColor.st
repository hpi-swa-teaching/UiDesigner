private
nextRowColor

	| odd even |
	odd := Color gray: 0.85.
	even := Color gray: 0.95.
	^ nextRowColor
		ifNil: [nextRowColor := odd]
		ifNotNil: [nextRowColor := (nextRowColor = odd
			ifTrue: [even]
			ifFalse: [odd])].