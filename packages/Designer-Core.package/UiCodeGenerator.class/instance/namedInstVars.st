accessing
namedInstVars

	instVars ifNil: [self collectInstVars].
	^ instVars select: [:instVar | instVar at: #hasName]