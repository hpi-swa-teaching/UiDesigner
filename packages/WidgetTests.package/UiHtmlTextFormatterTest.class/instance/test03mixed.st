tests
test03mixed

	| text |
	text := '<u>Ahahaha! <b>Hello</b></u>, <i><b>World</b></i>!'.
	"Bad Squeak HTML generation."
	self
		assert: text
		~= (UiPlatform current textPrintHtmlString: text asHtmlText).