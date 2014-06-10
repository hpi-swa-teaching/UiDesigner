drawing
drawTextEdit: aTextEdit overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aTextEdit.
	aTextEdit enabled
		ifTrue: [self drawTextEditOverlayEnabledOn: aCanvas]
		ifFalse: [self drawTextEditOverlayDisabledOn: aCanvas].