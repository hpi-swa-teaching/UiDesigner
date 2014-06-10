model - accessing
modelClass: aClass

	aClass
		ifNil: [self model: nil]
		ifNotNil: [:c | self model: c new].