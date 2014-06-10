model - accessing
modelClass

	^ self model
		ifNil: [nil]
		ifNotNil: [:m | m class]