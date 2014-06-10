edit mode - accessing
editMode: aBoolean

	| result |
	result := super editMode: aBoolean.
	
	aBoolean ifTrue: [
		"Initialize control bar."
		buttonContainer ifNil: [self initializeEditButtons].
		"Ensure at least one page."
		self currentPage ifNil: [self addPage].
		"Set edit mode in all available pages."
		self pages do: [:pg | pg editMode: aBoolean].
		"Show edit bar if hidden."
		self updateEditButtons].
	
	aBoolean ifFalse: [
		buttonContainer delete].
	
	^ result