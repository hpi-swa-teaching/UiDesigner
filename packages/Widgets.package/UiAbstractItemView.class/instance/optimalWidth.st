geometry
optimalWidth

	| w |
	w := 0.
	self viewport columns do: [:column |
		column resizeMode == #spaceFill
			ifTrue: [w := w + column optimalSize]
			ifFalse: [w := w + column width]].
	self flag: #magicNumber. "mt: Why is scrollbar thickness not sufficient here?"
	^ w + self scrollBarThickness + 5