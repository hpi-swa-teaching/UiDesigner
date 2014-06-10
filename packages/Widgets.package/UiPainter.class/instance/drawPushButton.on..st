drawing
drawPushButton: aPushButton on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aPushButton.
	aPushButton enabled
		ifTrue: [self drawPushButtonEnabledOn: aCanvas]
		ifFalse: [self drawPushButtonDisabledOn: aCanvas].