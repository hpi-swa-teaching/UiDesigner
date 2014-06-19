tests
test04SetTextWithConversion

	self spyOn: #valueChanged:.
	
	sut
		converter: [:raw | raw asString asInteger + 1];
		autoConvert: true;
		theText: 42.
	
	self
		assert: '43' asText equals: sut theText;
		assert: {#valueChanged:. {43}} equals: spy waitForNextSignal.