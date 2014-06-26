code generation
createUiPanelCodeWith: aGenerator

	| stream uiClassTemplate |
	uiClassTemplate := 'panel setProperty: #uiClassName toValue: ''{1}''.'.
	stream := WriteStream on: ''.
	
	stream nextPutAll: '"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	panel := '.
	
	source setProperty: #objectNameTemp toValue: source objectName.
	self injectUiCodeFor: source into: stream with: aGenerator.
	
	"Store UI class name."
	stream crtab; nextPutAll: (uiClassTemplate format: {
		source uiClassName}).
		
	aGenerator generateMethod: 'initializePanel' with: stream contents classified: 'ui - private'.	
		