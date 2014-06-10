drawing
drawButtonGroup: aButtonGroup overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aButtonGroup.
	aButtonGroup enabled
		ifTrue: [self drawButtonGroupOverlayEnabledOn: aCanvas]
		ifFalse: [self drawButtonGroupOverlayDisabledOn: aCanvas].