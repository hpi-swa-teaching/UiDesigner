drawing
drawSlider: aSlider overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aSlider.
	aSlider enabled
		ifTrue: [self drawSliderOverlayEnabledOn: aCanvas]
		ifFalse: [self drawSliderOverlayDisabledOn: aCanvas].