drawing
drawPushButton: aPushButton overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aPushButton.
	aPushButton enabled
		ifTrue: [self drawPushButtonOverlayEnabledOn: aCanvas]
		ifFalse: [self drawPushButtonOverlayDisabledOn: aCanvas].