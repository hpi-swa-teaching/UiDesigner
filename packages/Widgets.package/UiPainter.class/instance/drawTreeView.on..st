drawing
drawTreeView: aTreeView on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aTreeView.
	aTreeView enabled
		ifTrue: [self drawTreeViewEnabledOn: aCanvas]
		ifFalse: [self drawTreeViewDisabledOn: aCanvas].