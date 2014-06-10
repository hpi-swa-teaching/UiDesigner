drawing
drawCheckBox: aCheckBox overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aCheckBox.
	aCheckBox enabled
		ifTrue: [self drawCheckBoxOverlayEnabledOn: aCanvas]
		ifFalse: [self drawCheckBoxOverlayDisabledOn: aCanvas].