tests
test05color

	| text |
	text := '<font color="#FFFF00">A</font>' asHtmlText.
	self assert: Color yellow equals: (text runs first first color)