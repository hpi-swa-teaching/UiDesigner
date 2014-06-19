tests
test03SetTextWithLineBreaks

	sut theText: 'Hello
World' asText.

	self assert: 'Hello World' asText equals: sut theText.