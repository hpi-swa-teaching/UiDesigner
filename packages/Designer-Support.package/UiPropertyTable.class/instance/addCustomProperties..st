adding - combined
addCustomProperties: aMorph

	| editor |
	aMorph class widgetProperties do: [:category |
		self addSeparator: category key first.
		category value do: [:property | |target|
			target := aMorph perform: category key second.
			editor := editorFactory
				editorForProperty: property key
				kind: property value
				initialValue: (target perform: property key).
			self addPropertyLabel: property key editor: editor.

			"Post editor setup."
			({Integer. Point. String. Float. Object} includes: property value)
				ifTrue: [self connect: editor signal: #valueChanged: to: target selector: (property key, #:) asSymbol].
			(property value = Boolean)
				ifTrue: [self connect: editor signal: #toggled: to: target selector: (property key, #:) asSymbol].
			(property value = Form)
				ifTrue: [self connect: editor signal: #clicked: toSelector: #pickIcon:selector:editor:
					pattern: {
						#=. aMorph. "will get the new icon"
						#=. (property key, #:) asSymbol. "the accessor to set the new icon"
						#=. editor "the editor that shows a preview of the icon"}].
			(property value isKindOf: Collection)
				ifTrue: [
					self connect: editor signal: #currentIndexChanged:text: to: target selector: (property key, #:) asSymbol pattern: #(2)]]].