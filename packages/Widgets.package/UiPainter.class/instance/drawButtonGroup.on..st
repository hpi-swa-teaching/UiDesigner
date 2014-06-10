drawing
drawButtonGroup: aButtonGroup on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aButtonGroup.
	aButtonGroup enabled
		ifTrue: [self drawButtonGroupEnabledOn: aCanvas]
		ifFalse: [self drawButtonGroupDisabledOn: aCanvas].