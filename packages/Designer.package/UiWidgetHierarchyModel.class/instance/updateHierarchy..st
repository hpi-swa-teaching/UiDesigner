item model - slots
updateHierarchy: selectedWidget
	self selectedWidget: selectedWidget.
	self selectedNode: nil.
	self hierarchy: nil.
	self hierarchy add: (self createNodeFrom: (self topLevelContainer)).
						
	self topLevelContainer submorphs do: [ :submorph |
		self addSubmorph: submorph ToHierarchy: (self hierarchy at: 1).
	].
	
	self modelReset.
	
	self selectedNode ifNotNil: [ self publishSelectedNode: (self selectedNode) ].