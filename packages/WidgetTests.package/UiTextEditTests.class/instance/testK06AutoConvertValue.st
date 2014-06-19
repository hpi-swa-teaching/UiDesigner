tests - keyboard input
testK06AutoConvertValue

	sut
		autoConvert: true;
		converter: [:raw | raw asString asInteger + 1].

	self
		spyOn: #valueChanged:;
		keyStroke: sut textMorph key: $5 modifiers: #();
		assert: {#valueChanged:. {6}} equals: spy waitForNextSignal.	
	