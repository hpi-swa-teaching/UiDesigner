tests
test06FindItems

	sut addTextList: #(house tree flower dog).
	
	self
		assert: 1 equals: (sut select: [:item | item text asString = 'house']) size;
		assert: 4 equals: (sut select: [:item | item text asString matchesRegex: '.*']) size;
		assert: 3 equals: (sut select: [:item |
			UiPlatform current
				string: item text asString
				includesSubstring: 'e']) size.