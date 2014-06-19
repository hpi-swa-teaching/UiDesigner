as yet unclassified
test04TextOrForm

	sut text: 'Hello!'.
	self assert: 1 equals: sut submorphs size.
	
	sut form: (Form extent: 16@16 depth: 32).
	self assert: 1 equals: sut submorphs size.