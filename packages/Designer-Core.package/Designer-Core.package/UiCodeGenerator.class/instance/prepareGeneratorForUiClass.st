code generation
prepareGeneratorForUiClass
	| generator |
	generator := CodeGenerator new.
	generator generatedClassName: (self uiClassName).
	generator instVars: self instVarsString, ' ',self unnamedInstVarsString.
	generator category: (self category).
	generator superClass: UserInterface.
	^generator