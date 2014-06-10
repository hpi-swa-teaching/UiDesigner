accessing
buttonColor: aColor

	super buttonColor: aColor.
	{decreaseValueButton1. decreaseValueButton2. increaseValueButton} do: [:btn |
		btn ifNotNil: [btn color: aColor]].