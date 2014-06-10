drawing
drawListView: aListView on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aListView.
	aListView enabled
		ifTrue: [self drawListViewEnabledOn: aCanvas]
		ifFalse: [self drawListViewDisabledOn: aCanvas].