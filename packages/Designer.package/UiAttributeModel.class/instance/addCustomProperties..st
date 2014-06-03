updating
addCustomProperties: aMorph
	| nodeCreators nodeCreatorBlock |
	nodeCreators := IdentityDictionary newFrom: {
		Boolean -> [:cl :n :v :vs | self createBooleanNodeWithName: n andValue: v ].
		Object -> [:cl :n :v :vs | self createCodeNodeWithName: n andValue: v ].
		Array -> [:cl :n :v :vs | self createListNodeWithName: n withValues: vs AndCurrentValue: v ].
		String -> [ :cl :n :v :vs | self createTextNodeWithName: n andValue: v ]".
		Array -> [:cl :n :v :vs | self createListNodeWithName: n withValues: vs AndCurrentValue: v ]"
	}.
	
	aMorph class widgetProperties do: [ :category | | parentNode |
		
		parentNode := self attributes
				detect: [:n | (n at: #attributeOrigin) = (aMorph class)]
				ifNone: [ self createParentNodeFrom: category key first].
		
		category value do: [ :property | | newChild propertyClass propertyName propertyValue currentValue|
			propertyClass := property value.
			propertyName := property key. 
			propertyValue := nil.
			currentValue := (aMorph perform: propertyName).
			nodeCreatorBlock := nodeCreators at: propertyClass
								 ifAbsent: [ Transcript show: (propertyClass asString , ' | ' , propertyName asString).
											nodeCreators at: Object].
			
			newChild := nodeCreatorBlock valueWithArguments: {propertyClass . propertyName .  currentValue . propertyValue}.
			
			parentNode addChild: newChild ]].