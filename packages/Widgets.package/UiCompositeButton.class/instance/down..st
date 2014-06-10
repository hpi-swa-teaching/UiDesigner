accessing
down: aBoolean

	super down: aBoolean.
	box ifNotNil: [:b | b down: aBoolean | self checked].