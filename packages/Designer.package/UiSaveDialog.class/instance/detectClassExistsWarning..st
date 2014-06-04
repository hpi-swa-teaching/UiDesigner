as yet unclassified
detectClassExistsWarning: aClassName 

	((Smalltalk at: (aClassName asString asSymbol) ifAbsent: [nil]) isNil)
		ifFalse: [self ui warningLabel theText: 'WARNING -- The class is already existent!'].