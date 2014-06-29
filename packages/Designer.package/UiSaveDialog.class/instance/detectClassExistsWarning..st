accessing
detectClassExistsWarning: aClassName 

	((Smalltalk at: (aClassName asString asSymbol) ifAbsent: [nil]) isNil)
		ifFalse: [self ui warningLabel theText: 'WARNING -- The class is already existent!'.
			self ui panel removeMorph: self ui saveWithSurroundingClass.
			]
		ifTrue: [self ui warningLabel theText: ''.
			self ui panel addChild: self ui saveWithSurroundingClass.
			 ].
