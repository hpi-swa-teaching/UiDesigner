updating
addSubmorph: aMorph ToHierarchy: parentNode
	| morphNode |
	
	(self isGoodForListing: aMorph) 
		ifFalse: [ morphNode := parentNode. ]
		ifTrue: [ morphNode := self createNodeFrom: aMorph.						
				parentNode addChild: morphNode ].
						
	aMorph submorphs do: [ :submorph |
		self addSubmorph: submorph ToHierarchy: morphNode ].