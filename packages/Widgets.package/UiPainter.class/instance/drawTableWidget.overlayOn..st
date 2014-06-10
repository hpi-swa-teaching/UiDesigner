drawing
drawTableWidget: aTableWidget overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aTableWidget.
	aTableWidget enabled
		ifTrue: [self drawTableWidgetOverlayEnabledOn: aCanvas]
		ifFalse: [self drawTableWidgetOverlayDisabledOn: aCanvas].