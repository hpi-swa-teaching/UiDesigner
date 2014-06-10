drawing
drawToolButton: aToolButton on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aToolButton.
	aToolButton enabled
		ifTrue: [self drawToolButtonEnabledOn: aCanvas]
		ifFalse: [self drawToolButtonDisabledOn: aCanvas].