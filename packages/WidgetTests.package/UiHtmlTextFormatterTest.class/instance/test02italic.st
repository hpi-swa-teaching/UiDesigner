tests
test02italic

	| text |
	text := 'Hel<i>lo</i>, W<i>orl</i>d!'.
	self
		assert: text
		equals: (UiPlatform current textPrintHtmlString: text asHtmlText).