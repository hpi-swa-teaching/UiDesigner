tests
test02HelpText

	sut helpText: 'Type...'.
	
	self assert: 'Type...' equals: sut helpText.