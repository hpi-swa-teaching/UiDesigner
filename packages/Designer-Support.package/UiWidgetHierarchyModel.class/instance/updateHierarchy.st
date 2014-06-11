item model - slots
updateHierarchy
	self hierarchy: nil.
	self hierarchy add: (self createNodeFrom: (self topLevelContainer)).
						
	self topLevelContainer submorphs do: [ :submorph |
		self addSubmorph: submorph ToHierarchy: (self hierarchy at: 1).
	].
	
	self modelReset.