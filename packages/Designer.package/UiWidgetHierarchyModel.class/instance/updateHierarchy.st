item model - signals
updateHierarchy
	self hierarchy add: (UiPropertyItemNode new
						addDefaultGroup;
						at: #className put: (self topLevelContainer);
						yourself).
						
	self topLevelContainer submorphs do: [ :submorph |
		self addSubmorph: submorph ToHierarchy: (self hierarchy at: 1).
		].
						
	self modelReset.