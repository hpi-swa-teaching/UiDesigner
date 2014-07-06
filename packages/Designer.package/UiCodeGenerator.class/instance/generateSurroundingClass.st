code generation
generateSurroundingClass 
	| generator |
	generator := self prepareGeneratorForSurroundingClass.
	
	generator generateClass.
	generator generateMethod: 'ui' with: '^ui ifNil: [ui := ', self uiClassName, ' new.]' classified: 'accessing'.
	generator generateMethod: 'initialize' with: 'super initialize.
	self ui setupUi: self.' classified: 'initialization'.
	generator generateMethod: 'open' with: 'self openInWindowLabeled: ''', self surroundingClassName , ''''.