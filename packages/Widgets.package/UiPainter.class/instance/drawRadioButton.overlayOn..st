drawing
drawRadioButton: aRadioButton overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aRadioButton.
	aRadioButton enabled
		ifTrue: [self drawRadioButtonOverlayEnabledOn: aCanvas]
		ifFalse: [self drawRadioButtonOverlayDisabledOn: aCanvas].