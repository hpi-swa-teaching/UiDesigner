windowing
deleteOwnWindows 

	self attributesWindow = nil
		ifFalse: [self attributesWindow owner delete.].
	self hierarchyWindow = nil
		ifFalse: [self hierarchyWindow  owner delete.].
	self widgetsWindow = nil
		ifFalse: [self widgetsWindow owner delete.].