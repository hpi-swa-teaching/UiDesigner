drawing
drawCheckBox: aCheckBox on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aCheckBox.
	aCheckBox enabled
		ifTrue: [self drawCheckBoxEnabledOn: aCanvas]
		ifFalse: [self drawCheckBoxDisabledOn: aCanvas].