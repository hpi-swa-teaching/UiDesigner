adding
addListProperty: aProperty values: someValues morph: aMorph
	"Treat list elements as symbols."
	
	| editor |
	editor := editor := editorFactory
		editorForProperty: aProperty
		kind: someValues
		initialValue: (aMorph perform: aProperty).
	self addPropertyLabel: aProperty editor: editor.
	self connect: editor signal: #currentIndexChanged:text: to: aMorph selector: (aProperty, #:) asSymbol pattern: #(2).