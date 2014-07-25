code generation
createUiPanelCodeWith: aGenerator

	| stream |
	stream := WriteStream on: ''.
	stream nextPutAll: 'panel := '.
	
	source setProperty: #objectNameTemp toValue: source objectName.
	self injectUiCodeFor: source into: stream with: aGenerator.
	
	stream crtab; nextPutAll: (self uiClassTemplate format: {
		source uiClassName}).
		
	aGenerator generateMethod: 'initializePanel' with: stream contents classified: 'ui - private'.	
		