add/remove
addTextList: someTexts

	self
		addItemListFrom: someTexts
		using: [:text :item | item text: text].