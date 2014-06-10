drawing
drawLabel: aLabel overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aLabel.
	aLabel enabled
		ifTrue: [self drawLabelOverlayEnabledOn: aCanvas]
		ifFalse: [self drawLabelOverlayDisabledOn: aCanvas].