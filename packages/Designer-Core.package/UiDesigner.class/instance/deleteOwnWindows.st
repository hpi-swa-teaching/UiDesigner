deletion
deleteOwnWindows 

	self attributesWindow = nil
		ifFalse: [self attributesWindow owner delete.].
	self attributesWindow = nil
		ifFalse: [self hierarchyWindow  owner delete.].
	self attributesWindow = nil
		ifFalse: [self widgetsWindow owner delete.].