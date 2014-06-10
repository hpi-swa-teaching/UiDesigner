drawing
drawProgressBar: aProgressBar on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aProgressBar.
	aProgressBar enabled
		ifTrue: [self drawProgressBarEnabledOn: aCanvas]
		ifFalse: [self drawProgressBarDisabledOn: aCanvas].