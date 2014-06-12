code generation
injectInitializationCodeFor: aMorph into: stream

	aMorph hasTableLayout
		ifTrue: [stream crtab; nextPutAll: ('{1} changeTableLayout.' format: {
			aMorph valueOfProperty: #objectNameTemp})].
	aMorph hasProportionalLayout
		ifTrue: [stream crtab; nextPutAll: ('{1} changeProportionalLayout.' format: {
			aMorph valueOfProperty: #objectNameTemp})].
	
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