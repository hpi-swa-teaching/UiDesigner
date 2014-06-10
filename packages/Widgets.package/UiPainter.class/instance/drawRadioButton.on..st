drawing
drawRadioButton: aRadioButton on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aRadioButton.
	aRadioButton enabled
		ifTrue: [self drawRadioButtonEnabledOn: aCanvas]
		ifFalse: [self drawRadioButtonDisabledOn: aCanvas].