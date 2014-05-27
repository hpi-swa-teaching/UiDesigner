item model - signals
updateHierarchy
	self hierarchy add: (UiPropertyItemNode new
						addDefaultGroup;
						at: #className put: (self topLevelContainer);
						yourself).
						
	self modelReset.