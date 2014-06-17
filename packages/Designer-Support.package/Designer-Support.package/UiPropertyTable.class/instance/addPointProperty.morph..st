adding
addPointProperty: aProperty morph: aMorph

	| editor |
	editor := editorFactory
		editorForProperty: aProperty
		kind: Point
		initialValue: (aMorph perform: aProperty).
	self addPropertyLabel: aProperty editor: editor.
	self connect: editor signal: #valueChanged: to: aMorph selector: (aProperty, #:) asSymbol.