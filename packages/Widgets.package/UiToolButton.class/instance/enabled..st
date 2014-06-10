accessing
enabled: aBoolean

	enabled = aBoolean ifTrue: [^ self].
	super enabled: aBoolean.
	self updateSubmorphs.