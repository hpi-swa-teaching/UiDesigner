updating
addCustomProperties: aMorph
	| nodeCreators nodeCreatorBlock |
	nodeCreators := IdentityDictionary newFrom: {
		Boolean class -> [:cl :n :v :vs | self createBooleanNodeWithName: n andValue: v ].
		Object class -> [:cl :n :v :vs | self createCodeNodeWithName: n andValue: v ].
		Array -> [:cl :n :v :vs | self createListNodeWithName: n withValues: vs AndCurrentValue: v ].
		String class -> [ :cl :n :v :vs | self createTextNodeWithName: n andValue: v ].
		Integer class -> [ :cl :n :v :vs | self createIntegerNodeWithName: n andValue: v ]
	}.
	
	aMorph class widgetProperties do: [ :category | | parentNode |
		
		parentNode := self attributes
				detect: [:n | (n at: #attributeOrigin) = (aMorph class)]
				ifNone: [ self createParentNodeFrom: category key first].
		
		category value do: [ :property | | newChild propertyClass propertyName propertyValue currentValue|
			propertyClass := property value class.
			propertyName := property key. 
			propertyValue := property value.
			currentValue := (aMorph perform: propertyName).
			nodeCreatorBlock := nodeCreators at: propertyClass
								 ifAbsent: [ Transcript show: ('UiAttributeModel>>addCustomProperties: Missing nodeCreators value: ' , propertyClass asString , ' | ' , propertyName asString , Character cr).
											nodeCreators at: Object class].
			
			newChild := nodeCreatorBlock valueWithArguments: {propertyClass . propertyName .  currentValue . propertyValue}.
			
			parentNode addChild: newChild ]].