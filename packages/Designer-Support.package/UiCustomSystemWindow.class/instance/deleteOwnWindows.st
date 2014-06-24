as yet unclassified
deleteOwnWindows
	| uiDesigner |
	uiDesigner := self submorphs at: 2.
	uiDesigner class = UiDesigner
		ifFalse: [^self].
	uiDesigner attributesWindow = nil
		ifFalse: [uiDesigner attributesWindow owner delete.].
	uiDesigner attributesWindow = nil
		ifFalse: [uiDesigner hierarchyWindow  owner delete.].
	uiDesigner attributesWindow = nil
		ifFalse: [uiDesigner widgetsWindow owner delete.].