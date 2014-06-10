drawing
drawTextEdit: aTextEdit on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aTextEdit.
	aTextEdit enabled
		ifTrue: [self drawTextEditEnabledOn: aCanvas]
		ifFalse: [self drawTextEditDisabledOn: aCanvas].