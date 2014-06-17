code generation
createUiClassWith: aGenerator

	(Smalltalk at: self uiClassName asSymbol ifAbsent: [])
		ifNotNil: [:uic |
			uic selectors copy do: [:selector | uic removeSelector: selector].
			uic instVarNames copy do: [:instVarName | uic removeInstVarName: instVarName]].

	aGenerator generateClass.