codeInjection
injectInitializationCodeFor: aMorph into: stream

	self injectLayoutCodeFor: aMorph into: stream. 
	
	self standardProperties do: [:property |
		self injectUiCodeFor: aMorph property: property into: stream].
	
	self injectCustomUiCodeFor: aMorph into: stream.
	
	aMorph objectName ifNotEmpty: [
		stream crtab; nextPutAll: (self nameTemplate format: {
			aMorph objectName.
			aMorph objectName.})].
	aMorph objectDescription ifNotEmpty: [
		stream crtab; nextPutAll: (self descrTemplate format: {
			aMorph valueOfProperty: #objectNameTemp.
			aMorph objectDescription.})].