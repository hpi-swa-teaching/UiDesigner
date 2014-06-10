drawing
drawLineEdit: aLineEdit on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aLineEdit.
	aLineEdit enabled
		ifTrue: [self drawLineEditEnabledOn: aCanvas]
		ifFalse: [self drawLineEditDisabledOn: aCanvas].