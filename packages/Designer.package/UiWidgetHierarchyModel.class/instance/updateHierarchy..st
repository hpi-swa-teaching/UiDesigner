item model - slots
updateHierarchy: selectedWidget
	self hierarchy: nil.
	self hierarchy add: (self createNodeFrom: (self topLevelContainer)).
						
	self topLevelContainer submorphs do: [ :submorph |
		self addSubmorph: submorph ToHierarchy: (self hierarchy at: 1).
	].
	
	self modelReset.
	self publishSelectedNode: (self selectedNode).