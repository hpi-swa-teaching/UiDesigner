tests
test05OriginalText

	sut theText: 'Hello, World!'.
	
	self assert: sut theText asString equals: sut originalText.