tests
test08overlapping
	"Open two tags at the beginning but close them deferred."

	| text |
	text := '<b><u>Hello</u> World</b>'.
	self
		assert: text
		equals: (UiPlatform current textPrintHtmlString: text asHtmlText).