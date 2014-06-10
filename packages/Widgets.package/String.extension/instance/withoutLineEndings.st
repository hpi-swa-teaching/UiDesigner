*widgets-support
withoutLineEndings

	^ self withSqueakLineEndings
		copyReplaceAll: String cr
		with: ' '
		asTokens: false