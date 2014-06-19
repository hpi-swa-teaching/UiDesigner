tests
test04runs

	| runs |
	runs := '<u>A<b>B</b></u>C<i><b>D</b></i>E' asHtmlText runs.
	self
		assert: 5 equals: runs size;
		assert: 1 equals: (runs at: 1) size; "underlined"
		assert: 2 equals: (runs at: 2) size; "underlined, bold"
		assert: 0 equals: (runs at: 3) size;
		assert: 2 equals: (runs at: 4) size; "italic, bold"
		assert: 0 equals: (runs at: 5) size.