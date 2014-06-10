code generation
prepareGeneratorForUiClass
	| generator |
	generator := CodeGenerator new.
	generator generatedClassName: (self uiClassName).
	generator instVars: self instVarsString.
	generator category: (self category).
	generator superClass: UserInterface.
	^generator