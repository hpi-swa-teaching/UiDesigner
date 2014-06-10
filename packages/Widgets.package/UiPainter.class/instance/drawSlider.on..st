drawing
drawSlider: aSlider on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aSlider.
	aSlider enabled
		ifTrue: [self drawSliderEnabledOn: aCanvas]
		ifFalse: [self drawSliderDisabledOn: aCanvas].