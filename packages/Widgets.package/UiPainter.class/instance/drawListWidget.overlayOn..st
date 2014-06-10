drawing
drawListWidget: aListWidget overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aListWidget.
	aListWidget enabled
		ifTrue: [self drawListWidgetOverlayEnabledOn: aCanvas]
		ifFalse: [self drawListWidgetOverlayDisabledOn: aCanvas].