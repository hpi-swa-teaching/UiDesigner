drawing
drawListView: aListView overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aListView.
	aListView enabled
		ifTrue: [self drawListViewOverlayEnabledOn: aCanvas]
		ifFalse: [self drawListViewOverlayDisabledOn: aCanvas].