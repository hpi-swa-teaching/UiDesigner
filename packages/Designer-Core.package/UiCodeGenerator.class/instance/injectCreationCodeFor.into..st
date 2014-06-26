codeInjection
injectCreationCodeFor: aMorph into: stream

	(self hasInstVarNamed: (aMorph valueOfProperty: #objectNameTemp))
		ifFalse: [stream crtab; 
			nextPutAll: '| ', (aMorph valueOfProperty: #objectNameTemp),' |
	'.].

	stream nextPutAll: (self creationTemplate format: {
		aMorph valueOfProperty: #objectNameTemp.
		aMorph class name}).