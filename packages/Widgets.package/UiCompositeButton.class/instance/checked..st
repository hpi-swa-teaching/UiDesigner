accessing
checked: aBoolean

	super checked: aBoolean.
	box ifNotNil: [:b | b down: aBoolean].