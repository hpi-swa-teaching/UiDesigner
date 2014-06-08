adding
addRectangleProperty: aProperty morph: aMorph

	| editor |
	editor := editor := editorFactory
		editorForProperty: aProperty
		kind: Rectangle
		initialValue: (aMorph perform: aProperty).
	self addPropertyLabel: aProperty editor: editor.
	self connect: editor signal: #valueChanged: to: aMorph selector: (aProperty, #:) asSymbol.