tests
test06SetTextWithReadOnly

	sut
		readOnly: true;
		theText: 'foobar'.
		
	self assert: 'foobar' asText equals: sut theText.