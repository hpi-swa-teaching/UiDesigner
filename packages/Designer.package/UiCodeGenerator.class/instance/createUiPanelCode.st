code generation
createUiPanelCode

	| stream uiClassTemplate |
	uiClassTemplate := 'panel setProperty: #uiClassName toValue: ''{1}''.'.
	stream := WriteStream on: ''.
	
	stream nextPutAll: 'initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| '.
	
	self unnamedInstVars
		do: [:uinstvar | stream nextPutAll: (uinstvar at: #name)]
		separatedBy: [stream nextPutAll: ' '].
	stream nextPutAll: ' |
	'.	
	
	source setProperty: #objectNameTemp toValue: source objectName.
	self injectUiCodeFor: source into: stream.
	
	"Store UI class name."
	stream crtab; nextPutAll: (uiClassTemplate format: {
		source uiClassName}).
		
	self uiClass
		compile: stream contents
		classified: 'ui - private'.
		