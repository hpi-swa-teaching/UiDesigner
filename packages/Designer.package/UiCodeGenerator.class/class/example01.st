examples
example01

	| ui |
	ui := Morph new
		setProperty: #uiClassName toValue: #Foobar.
	UiCodeGenerator generateUiClassFor: (Morph new
	setProperty: #uiClassName toValue: #Foobar).