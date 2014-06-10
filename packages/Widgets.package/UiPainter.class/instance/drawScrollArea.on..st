drawing
drawScrollArea: aScrollArea on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aScrollArea.
	aScrollArea enabled
		ifTrue: [self drawScrollAreaEnabledOn: aCanvas]
		ifFalse: [self drawScrollAreaDisabledOn: aCanvas].