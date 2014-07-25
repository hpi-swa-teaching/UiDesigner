testing
testPrepareGeneratorForSurroundingClass
	| generator uicodegenerator source |
	
	source := Morph new.
	source uiClassName: 'SomeClass'.
	uicodegenerator := UiCodeGenerator new.
	uicodegenerator source: source.
	generator := uicodegenerator prepareGeneratorForUiClass.
	
	self assert: (generator superClass = UserInterface).
	self assert: (generator instVars = '').
	self assert: (generator category = uicodegenerator category). 
	self assert: (generator generatedClassName asString = 'SomeClassUi').