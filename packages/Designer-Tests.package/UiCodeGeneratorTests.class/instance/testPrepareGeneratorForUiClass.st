testing
testPrepareGeneratorForUiClass

	| generator uicodegenerator source |
	source := Morph new.
	source uiClassName: 'SomeClass'.
	uicodegenerator := UiCodeGenerator new.
	uicodegenerator source: source.
	generator := uicodegenerator prepareGeneratorForSurroundingClass.
	
	self assert: (generator superClass = Morph).
	self assert: (generator instVars = 'ui').
	self assert: (generator category = uicodegenerator category). 
	self assert: (generator generatedClassName asString = 'SomeClass').