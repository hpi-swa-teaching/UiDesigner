codeInjection
injectUiCodeFor: aMorph into: stream with: aGenerator
	| newStream methodName |
	newStream := WriteStream on: ''.
	self injectCreationCodeFor: aMorph into: newStream.
	self injectInitializationCodeFor: aMorph into: newStream.
	self injectSubmorphCodeFor: aMorph into: newStream with: aGenerator.
	self injectReturnCodeFor: aMorph into: newStream.
	
	methodName := 'initialize', (aMorph valueOfProperty: #objectNameTemp). "objectName."
	aGenerator generateMethod: methodName with: (newStream contents) classified: 'ui - private'.
	
	stream nextPutAll: '(self ',methodName,').'.