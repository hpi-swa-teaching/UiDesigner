drawing
drawListWidget: aListWidget on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aListWidget.
	aListWidget enabled
		ifTrue: [self drawListWidgetEnabledOn: aCanvas]
		ifFalse: [self drawListWidgetDisabledOn: aCanvas].