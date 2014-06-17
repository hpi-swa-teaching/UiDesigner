codeInjection
injectCreationCodeFor: aMorph into: stream

	stream crtab; nextPutAll: (self creationTemplate format: {
		aMorph valueOfProperty: #objectNameTemp.
		aMorph class name}).