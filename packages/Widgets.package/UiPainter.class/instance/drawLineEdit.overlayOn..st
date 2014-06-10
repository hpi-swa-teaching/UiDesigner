drawing
drawLineEdit: aLineEdit overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aLineEdit.
	aLineEdit enabled
		ifTrue: [self drawLineEditOverlayEnabledOn: aCanvas]
		ifFalse: [self drawLineEditOverlayDisabledOn: aCanvas].