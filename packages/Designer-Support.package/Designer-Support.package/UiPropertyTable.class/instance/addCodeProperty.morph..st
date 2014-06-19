adding
addCodeProperty: aProperty morph: aMorph

	| editor |
	editor := editorFactory
		editorForProperty: aProperty
		kind: Object
		initialValue: (aMorph perform: aProperty).
	self addPropertyLabel: aProperty editor: editor.
	self connect: editor signal: #valueChanged: to: aMorph selector: (aProperty, #:) asSymbol.