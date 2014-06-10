drawing
drawScrollBar: aScrollBar overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aScrollBar.
	aScrollBar enabled
		ifTrue: [self drawScrollBarOverlayEnabledOn: aCanvas]
		ifFalse: [self drawScrollBarOverlayDisabledOn: aCanvas].