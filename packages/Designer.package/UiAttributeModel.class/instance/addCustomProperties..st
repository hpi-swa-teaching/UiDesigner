updating
addCustomProperties: aMorph
	aMorph class widgetProperties do: [ :category | | parentNode |
		
		parentNode := self attributes
				detect: [:n | (n at: #attributeOrigin) = (aMorph class)]
				ifNone: [ self createParentNodeFrom: category key first].
		
		category value do: [ :property | | newChild |
			(property value class = Array)
				ifTrue: [ newChild :=  self createListNodeWithName: (property key) withValues: (property value) AndCurrentValue: (aMorph perform: (property key)) ]
				ifFalse: [ newChild := self createNodeWithName: (property key) andValue: (aMorph perform: (property key)) andType: (property value) ].
			
			parentNode addChild: newChild ]].