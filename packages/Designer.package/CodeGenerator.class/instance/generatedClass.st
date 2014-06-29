accessing
generatedClass
	^ Smalltalk at: (self generatedClassName) ifAbsent:
		[ Exception signal: 'Generated class does not exist. Generate a class befor you try to generate Methods!' ].