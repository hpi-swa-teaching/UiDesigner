drawing
drawToolButton: aToolButton overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aToolButton.
	aToolButton enabled
		ifTrue: [self drawToolButtonOverlayEnabledOn: aCanvas]
		ifFalse: [self drawToolButtonOverlayDisabledOn: aCanvas].