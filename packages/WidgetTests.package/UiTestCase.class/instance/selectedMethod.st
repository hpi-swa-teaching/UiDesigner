accessing
selectedMethod
	"Adaption for CodeSight due to changed implementation of #testSelectors on class-side."
	
	(self class includesSelector: self selector)
		ifTrue: [^ self class >> self selector]
		ifFalse: [self class allSuperclassesDo: [:superclass |
				(superclass includesSelector: self selector)
					ifTrue: [^ superclass >> self selector]]].
			
	Error signal: 'Method could not be found!'.
	    