drawing
drawComboBox: aComboBox overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aComboBox.
	aComboBox enabled
		ifTrue: [self drawComboBoxOverlayEnabledOn: aCanvas]
		ifFalse: [self drawComboBoxOverlayDisabledOn: aCanvas].