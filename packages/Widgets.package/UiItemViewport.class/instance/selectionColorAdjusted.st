accessing - private
selectionColorAdjusted
	"Adjust selection color according to keyboard focus."
	
	^ self hasKeyboard
		ifFalse: [self selectionColor alpha: 0.3]
		ifTrue: [self selectionColor]