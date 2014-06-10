*widgets-support
adjustBrightness: aFloat

	^ self collectColors: [:color | color adjustBrightness: aFloat]