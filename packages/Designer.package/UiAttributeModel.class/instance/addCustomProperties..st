updating
addCustomProperties: aMorph
	aMorph class widgetProperties do: [ :category | | parentNode |
		
		parentNode := self attributes
				detect: [:n | (n at: #attributeOrigin) = (aMorph class)]
				ifNone: [ self createParentNodeFrom: category key first].
		
		category value do: [ :property | | newChild propertyClass propertyName propertyValue currentValue|
			propertyClass := property value.
			propertyName := property key. 
			currentValue := (aMorph perform: propertyName).
			
			(propertyClass = Array)
				ifTrue: [ newChild :=  self createListNodeWithName: propertyName withValues: propertyValue AndCurrentValue: currentValue ]
				ifFalse: [
					"Debugger halt."
					(propertyClass = Boolean) 
						ifTrue: [ newChild := self createBooleanNodeWithName: propertyName andValue: propertyValue ]
						ifFalse: [ newChild := self createNodeWithName: propertyName andValue: currentValue andType: propertyClass ]].
			
			parentNode addChild: newChild ]].