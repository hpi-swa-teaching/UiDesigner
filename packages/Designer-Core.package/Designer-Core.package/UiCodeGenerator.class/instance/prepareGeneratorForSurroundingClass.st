code generation
prepareGeneratorForSurroundingClass
	| generator |
	generator := CodeGenerator new.
	generator generatedClassName: (self surroundingClassName).
	generator instVars: 'ui'.
	generator category: (self category).
	generator superClass: Morph.
	^generator