updating
pickIcon: aMorph selector: aSymbol editor: aButton
	
	| codeSnippet |
	codeSnippet := UiIconPickerDialog new
		topLeft: (aButton localPointToGlobal: aButton bottomLeft);
		pickCodeForIcon.

	aMorph perform: aSymbol with: (Compiler evaluate: codeSnippet).
	aMorph setProperty: (aSymbol allButLast, #ByDesigner) asSymbol toValue: codeSnippet.
	aButton icon: (Compiler evaluate: codeSnippet).