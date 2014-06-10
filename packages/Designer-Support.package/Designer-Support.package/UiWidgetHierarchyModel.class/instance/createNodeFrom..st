item model - signals
createNodeFrom: aWidget
	
	^(UiPropertyItemNode new
			addDefaultGroup;
			at: #className put: (self extractNameFromWidget: aWidget);
			at: #classIcon put: (aWidget class);
			yourself)