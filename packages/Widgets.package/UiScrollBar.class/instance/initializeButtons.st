initialization
initializeButtons

	self buttonMode == #none
		ifTrue: [^ self].

	self initializeIncreaseValueButton.

	{#(adjacent both) -> [self initializeDecreaseValueButton2].
	#(distant both) -> [self initializeDecreaseValueButton1]} do: [:assoc |
		(assoc key includes: self buttonMode)
			ifTrue: [assoc value value]].