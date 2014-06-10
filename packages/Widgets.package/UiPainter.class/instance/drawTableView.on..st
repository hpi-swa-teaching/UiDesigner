drawing
drawTableView: aTableView on: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: aTableView.
	aTableView enabled
		ifTrue: [self drawTableViewEnabledOn: aCanvas]
		ifFalse: [self drawTableViewDisabledOn: aCanvas].