slots
detectClassExistsWarning: aClassName 

	(Smalltalk at: (aClassName asString asSymbol) ifAbsent: [nil])
		ifNotNil: [self ui warningLabel theText: 'WARNING -- The class is already existent!'.
				self ui saveWithSurroundingClass visible: false]
		ifNil: [self ui warningLabel theText: ''.
				self ui saveWithSurroundingClass visible: true].
