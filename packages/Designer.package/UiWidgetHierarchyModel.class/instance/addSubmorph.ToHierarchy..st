item model - signals
addSubmorph: aMorph ToHierarchy: parentNode
	| morphNode |
	morphNode := UiPropertyItemNode new
						addDefaultGroup;
						at: #className put: (aMorph);
						yourself.
						
	parentNode addChild: morphNode.
						
	aMorph submorphs do: [ :submorph |
		self addSubmorph: submorph ToHierarchy: morphNode ].