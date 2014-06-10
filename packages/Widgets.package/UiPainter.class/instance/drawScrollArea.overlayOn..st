drawing
drawScrollArea: aScrollArea overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aScrollArea.
	aScrollArea enabled
		ifTrue: [self drawScrollAreaOverlayEnabledOn: aCanvas]
		ifFalse: [self drawScrollAreaOverlayDisabledOn: aCanvas].