drawing
drawComboBox: aComboBox on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aComboBox.
	aComboBox enabled
		ifTrue: [self drawComboBoxEnabledOn: aCanvas]
		ifFalse: [self drawComboBoxDisabledOn: aCanvas].