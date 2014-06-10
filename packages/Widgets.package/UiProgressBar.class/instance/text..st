accessing
text: stringOrText

	text == stringOrText ifTrue: [^ self].
	text := stringOrText.
	self redrawLater.