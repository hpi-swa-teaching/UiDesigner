drawing
drawSpacer: aSpacer on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aSpacer.
	aSpacer enabled
		ifTrue: [self drawSpacerEnabledOn: aCanvas]
		ifFalse: [self drawSpacerDisabledOn: aCanvas].