tests
test04New

	self
		assert: #alwaysOn equals: sut horizontalScrollBarPolicy;  
		assert: #alwaysOn equals: sut verticalScrollBarPolicy;
		assert: sut widget isNil.