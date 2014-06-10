accessing
unnamedInstVars

	instVars ifNil: [self collectInstVars].
	^ instVars reject: [:instVar | instVar at: #hasName]