accessing
helpText

	^ self dragDropSpec
		ifNil: [nil]
		ifNotNil: [:spec | spec helpText]