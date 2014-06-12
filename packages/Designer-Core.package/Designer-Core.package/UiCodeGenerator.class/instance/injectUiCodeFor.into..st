private - reading
injectUiCodeFor: aMorph into: stream

	self injectCreationCodeFor: aMorph into: stream.
	self injectInitializationCodeFor: aMorph into: stream.
	self injectSubmorphCodeFor: aMorph into: stream.