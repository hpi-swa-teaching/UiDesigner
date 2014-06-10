drawing
drawTableView: aTableView overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aTableView.
	aTableView enabled
		ifTrue: [self drawTableViewOverlayEnabledOn: aCanvas]
		ifFalse: [self drawTableViewOverlayDisabledOn: aCanvas].