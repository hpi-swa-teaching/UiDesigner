accessing
scrollBarThickness: anInteger

	anInteger = scrollBarThickness ifTrue: [^ self].
	
	scrollBarThickness := anInteger.
	self updateLayout.