drawing
drawContainer: aContainer overlayOn: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aContainer.
	aContainer enabled
		ifTrue: [self drawContainerOverlayEnabledOn: aCanvas]
		ifFalse: [self drawContainerOverlayDisabledOn: aCanvas].