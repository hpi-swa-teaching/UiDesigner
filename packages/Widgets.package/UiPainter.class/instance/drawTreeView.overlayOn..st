drawing
drawTreeView: aTreeView overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aTreeView.
	aTreeView enabled
		ifTrue: [self drawTreeViewOverlayEnabledOn: aCanvas]
		ifFalse: [self drawTreeViewOverlayDisabledOn: aCanvas].