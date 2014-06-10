drawing
drawTableWidget: aTableWidget on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aTableWidget.
	aTableWidget enabled
		ifTrue: [self drawTableWidgetEnabledOn: aCanvas]
		ifFalse: [self drawTableWidgetDisabledOn: aCanvas].