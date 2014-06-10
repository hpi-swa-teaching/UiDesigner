drawing
drawStackedWidget: aStackedWidget on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aStackedWidget.
	aStackedWidget enabled
		ifTrue: [self drawStackedWidgetEnabledOn: aCanvas]
		ifFalse: [self drawStackedWidgetDisabledOn: aCanvas].