drawing
drawScrollBar: aScrollBar on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aScrollBar.
	aScrollBar enabled
		ifTrue: [self drawScrollBarEnabledOn: aCanvas]
		ifFalse: [self drawScrollBarDisabledOn: aCanvas].