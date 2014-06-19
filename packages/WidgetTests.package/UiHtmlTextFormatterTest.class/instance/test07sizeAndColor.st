tests
test07sizeAndColor

	| text |
	text := '<font color="#FFFF00" size="9">A</font>' asHtmlText.
	self
		assert: Color yellow equals: (text runs first first color);
		assert: 9 equals: (text runs first second font pointSize)