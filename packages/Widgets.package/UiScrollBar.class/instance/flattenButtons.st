actions
flattenButtons

	mouseDownEventPosition ifNotNil: [^ self].

	{decreaseValueButton1. decreaseValueButton2. increaseValueButton}
		do: [:btn | btn ifNotNil: [btn fadeOut]].