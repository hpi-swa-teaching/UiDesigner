item model - signals
addSubmorph: aMorph ToHierarchy: parentNode
	| morphNode |
	
	(self isGoodForListing: aMorph) 
		ifFalse: [ morphNode := parentNode. ]
		ifTrue: [ morphNode := UiPropertyItemNode new
						addDefaultGroup;
						at: #className put: (aMorph class);
						yourself.						
				parentNode addChild: morphNode. ].
						
	aMorph submorphs do: [ :submorph |
		self addSubmorph: submorph ToHierarchy: morphNode ].