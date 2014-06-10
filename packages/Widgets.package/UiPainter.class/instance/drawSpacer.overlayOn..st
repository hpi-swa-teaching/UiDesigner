drawing
drawSpacer: aSpacer overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aSpacer.
	aSpacer enabled
		ifTrue: [self drawSpacerOverlayEnabledOn: aCanvas]
		ifFalse: [self drawSpacerOverlayDisabledOn: aCanvas].