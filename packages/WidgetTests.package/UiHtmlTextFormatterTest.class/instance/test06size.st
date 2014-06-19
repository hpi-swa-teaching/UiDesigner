tests
test06size

	| text |
	text := '<font size="9">A</font>' asHtmlText.
	self assert: 9 equals: (text runs first first font pointSize)