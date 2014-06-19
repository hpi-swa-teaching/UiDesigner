tests
test01bold

	| text |
	text := '<b>Hello</b>, World!'.
	self
		assert: text
		equals: (UiPlatform current textPrintHtmlString: text asHtmlText).