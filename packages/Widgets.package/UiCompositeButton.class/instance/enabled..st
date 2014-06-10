accessing
enabled: aBoolean

	enabled = aBoolean ifTrue: [^ self].
	super enabled: aBoolean.
	box ifNotNil: [:b | b enabled: aBoolean].
	self updateSubmorphs.