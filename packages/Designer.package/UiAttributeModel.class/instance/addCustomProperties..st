updating
addCustomProperties: aMorph
	aMorph class widgetProperties do: [ :category | | parentNode |
		
		parentNode := self attributes
				detect: [:n | (n at: #attributeOrigin) = (aMorph class)]
				ifNone: [ self createParentNodeFrom: category key first].
		
		category value do: [ :property |
			parentNode addChild: (self createNodeWithName: (property key) andValue: (aMorph perform: (property key)) andType: (property value))]].