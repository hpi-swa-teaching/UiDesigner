drawing
drawStackedWidget: aStackedWidget overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aStackedWidget.
	aStackedWidget enabled
		ifTrue: [self drawStackedWidgetOverlayEnabledOn: aCanvas]
		ifFalse: [self drawStackedWidgetOverlayDisabledOn: aCanvas].