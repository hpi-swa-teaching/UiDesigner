tests
test02SetText

	self spyOn: #textChanged:.
	
	sut theText: 'Hello, World!'.
	
	self
		assert: 'Hello, World!' asText equals: sut theText;
		assert: {#textChanged:. {sut theText}} equals: spy waitForNextSignal.