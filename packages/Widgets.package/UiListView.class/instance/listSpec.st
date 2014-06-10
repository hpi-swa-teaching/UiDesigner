rows/columns - specs
listSpec

	^ self columnSpecs
		ifEmpty: []
		ifNotEmpty: [self columnSpecs first]