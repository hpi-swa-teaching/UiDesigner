events-processing
handlerForYellowButtonDown: evt

	^ self submorphs
		detect: [:m | m bounds containsPoint: evt position] ifNone: [self].
		