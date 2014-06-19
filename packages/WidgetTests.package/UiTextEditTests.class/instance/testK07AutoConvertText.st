tests - keyboard input
testK07AutoConvertText

	sut
		autoConvert: true;
		converter: [:raw | raw asString, 'foobar'].

	self
		spyOn: #textEdited:;
		keyStroke: sut textMorph key: $x modifiers: #();
		assert: {#textEdited:. {'xfoobar' asText}} equals: spy waitForNextSignal;
		assert: spy queue isEmpty.
	