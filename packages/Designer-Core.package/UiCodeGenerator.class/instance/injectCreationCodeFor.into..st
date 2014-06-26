codeInjection
injectCreationCodeFor: aMorph into: stream

	stream crtab; 
			nextPutAll: '| ', (aMorph valueOfProperty: #objectNameTemp),' |
	';
			nextPutAll: (self creationTemplate format: {
		aMorph valueOfProperty: #objectNameTemp.
		aMorph class name}).