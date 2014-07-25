updating
addCustomProperties: aMorph

	| nodeCreators nodeCreatorBlock |
	nodeCreators := self nodeCreators.
	
	aMorph class widgetProperties do: [ :category | | parentNode |
		parentNode := self attributes
			detect: [:n | (n at: #attributeOrigin) = (aMorph class)]
			ifNone: [ self createParentNodeFrom: category key first].
		
		category value do: [ :property | 
			| newChild propertyClass propertyName propertyValue currentValue|
			propertyClass := property value class.
			propertyName := property key. 
			propertyValue := property value.
			currentValue := (aMorph perform: propertyName).
			nodeCreatorBlock := nodeCreators at: propertyClass ifAbsent: 
										[nodeCreators at: Object class].
			
			newChild := nodeCreatorBlock valueWithArguments: 
						{propertyClass . propertyName .  currentValue . propertyValue}.
			
			parentNode addChild: newChild ]]