codeInjection
injectUiCodeFor: aMorph into: stream with: aGenerator
	| newStream methodName objName |
	newStream := WriteStream on: ''.
	self injectCreationCodeFor: aMorph into: newStream.
	self injectInitializationCodeFor: aMorph into: newStream.
	self injectSubmorphCodeFor: aMorph into: newStream with: aGenerator.
	self injectReturnCodeFor: aMorph into: newStream.
	
	objName := aMorph valueOfProperty: #objectNameTemp.
	((self hasInstVarNamed: objName) or: (objName = 'panel'))
		ifTrue: [methodName := 'initializeUi', objName capitalized.]
		ifFalse: [methodName := 'initialize', objName capitalized.].
	
	aGenerator generateMethod: methodName with: (newStream contents) classified: 'ui - private'.
	
	stream nextPutAll: '(self ',methodName,').'