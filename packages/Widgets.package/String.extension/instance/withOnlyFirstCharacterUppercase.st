*widgets-support
withOnlyFirstCharacterUppercase

	| answer |
	self ifEmpty: [^ self copy].
	answer := self asLowercase.
	answer at: 1 put: (answer at: 1) asUppercase.
	^ answer