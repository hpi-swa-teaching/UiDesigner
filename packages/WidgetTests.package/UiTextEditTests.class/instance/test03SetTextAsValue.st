tests
test03SetTextAsValue

	self
		spyOn: #textChanged:;
		spyOn: #valueChanged:.
	
	sut theText: 42.
	
	self
		assert: '42' asText equals: sut theText;
		assert: {#textChanged:. {sut theText}} equals: spy waitForNextSignal;
		assert: {#valueChanged:. {42}} equals: spy waitForNextSignal.