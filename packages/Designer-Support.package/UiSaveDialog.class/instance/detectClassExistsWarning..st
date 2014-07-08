accessing
detectClassExistsWarning: aClassName 

	((Smalltalk at: (aClassName asString asSymbol) ifAbsent: [nil]) isNil)
		ifFalse: [self ui warningLabel theText: 'WARNING -- The class is already existent!'.
				self ui saveWithSurroundingClass visible: false.]
		ifTrue: [self ui warningLabel theText: ''.
				self ui saveWithSurroundingClass visible: true.].
