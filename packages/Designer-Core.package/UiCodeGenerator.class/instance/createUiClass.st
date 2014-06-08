code generation
createUiClass

	(Smalltalk at: self uiClassName asSymbol ifAbsent: [])
		ifNotNil: [:uic |
			uic selectors copy do: [:selector | uic removeSelector: selector].
			uic instVarNames copy do: [:instVarName | uic removeInstVarName: instVarName]].

	UserInterface subclass: self uiClassName
		instanceVariableNames: self instVarsString
		classVariableNames: ''
		poolDictionaries: ''
		category: self category asString