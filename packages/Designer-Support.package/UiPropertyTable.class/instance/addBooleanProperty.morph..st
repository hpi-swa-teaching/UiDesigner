adding
addBooleanProperty: aProperty morph: aMorph

	| editor |
	editor := editorFactory
		editorForProperty: aProperty
		kind: Boolean
		initialValue: (aMorph perform: aProperty).
	self addPropertyLabel: aProperty editor: editor.
	self connect: editor signal: #toggled: to: aMorph selector: (aProperty, #:) asSymbol.