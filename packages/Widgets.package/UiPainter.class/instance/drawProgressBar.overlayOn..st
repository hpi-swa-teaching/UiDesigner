drawing
drawProgressBar: aProgressBar overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aProgressBar.
	aProgressBar enabled
		ifTrue: [self drawProgressBarOverlayEnabledOn: aCanvas]
		ifFalse: [self drawProgressBarOverlayDisabledOn: aCanvas].