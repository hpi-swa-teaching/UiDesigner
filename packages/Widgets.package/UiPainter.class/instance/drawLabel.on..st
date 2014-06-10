drawing
drawLabel: aLabel on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aLabel.
	aLabel enabled
		ifTrue: [self drawLabelEnabledOn: aCanvas]
		ifFalse: [self drawLabelDisabledOn: aCanvas].