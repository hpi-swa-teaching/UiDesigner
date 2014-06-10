*widgets-support
reverseDetect: aBlock

	^ self reverseDetect: aBlock ifNone: [self errorNotFound: aBlock]