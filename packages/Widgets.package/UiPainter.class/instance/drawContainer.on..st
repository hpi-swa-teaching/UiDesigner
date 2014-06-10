drawing
drawContainer: aContainer on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aContainer.
	aContainer enabled
		ifTrue: [self drawContainerEnabledOn: aCanvas]
		ifFalse: [self drawContainerDisabledOn: aCanvas].