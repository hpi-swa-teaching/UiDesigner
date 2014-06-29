adding - combined
addAllProperties: aMorph

	| editor |
	self addSeparator: 'General'.
	
	self addPropertyLabel: 'Type' editor: (UiLabel new text: aMorph class asString).
	
	((aMorph isKindOf: UiContainer) and: [(aMorph owner isKindOf: UiContainer) not])
		ifTrue: [
			editor := editorFactory
				editorForProperty: #uiClassName
				kind: String
				initialValue: aMorph uiClassName.
			self addPropertyLabel: 'UI Name' editor: editor.
			self connect: editor signal: #valueChanged: to: aMorph selector: #uiClassName:.
			self connect: editor signal: #valueChanged: toSelector: #updateSystemWindowLabel:.
			self updateSystemWindowLabel: aMorph uiClassName.]
		ifFalse: [
			editor := editorFactory
				editorForProperty: #objectName
				kind: String
				initialValue: aMorph objectName.
			editor helpText: 'Type accessor here...'.
			self addPropertyLabel: #Name editor: editor.
			editor connect: editor signal: #valueChanged: to: aMorph selector: #objectName:].
		
	editor := editorFactory
		editorForProperty: #objectDescription
		kind: String
		initialValue: aMorph objectDescription.
	editor helpText: 'Type comment here...'.
	self addPropertyLabel: #Description editor: editor.
	editor connect: editor signal: #valueChanged: to: aMorph selector: #objectDescription:.
	
	self addSeparator: 'Geometry'.
	
"	self addIntegerProperty: #left morph: aMorph."
	self addPointProperty: #topLeft morph: aMorph.
	self addIntegerProperty: #width morph: aMorph.
	self addIntegerProperty: #height morph: aMorph.
	
	self addSeparator: 'Owner-specific Layout'.
	
	self addListProperty: #hResizing values: #(rigid spaceFill shrinkWrap) morph: aMorph.
	self addListProperty: #vResizing values: #(rigid spaceFill shrinkWrap) morph: aMorph.
	self addIntegerProperty: #minWidth morph: aMorph.
	self addIntegerProperty: #minHeight morph: aMorph.
	
	(aMorph owner isUiContainer and: [aMorph owner hasTableLayout]) ifTrue: [
		self addBooleanProperty: #disableTableLayout morph: aMorph].
	
	(aMorph owner isUiContainer and: [aMorph owner hasProportionalLayout]) ifTrue: [
		self addRectangleProperty: #frameFractions morph: aMorph.
		self addRectangleProperty: #frameOffsets morph: aMorph].
	
	self addSeparator: 'Layout Policy'.
	
	editor := editorFactory
		editorForProperty: #hasTableLayout
		kind: Boolean
		initialValue: aMorph hasTableLayout.
	self addPropertyLabel: 'TableLayout' editor: editor.
	self connect: editor signal: #toggled: toSelector: #changeTableLayout:enable: pattern: {#=. aMorph. 1}.

	editor := editorFactory
		editorForProperty: #hasProportionalLayout
		kind: Boolean
		initialValue: aMorph hasProportionalLayout.
	self addPropertyLabel: 'ProportionalLayout' editor: editor.
	self connect: editor signal: #toggled: toSelector: #changeProportionalLayout:enable: pattern: {#=. aMorph. 1}.
	
	aMorph hasTableLayout ifTrue: [self addTableLayoutProperties: aMorph].
	aMorph hasProportionalLayout ifTrue: [self addProportionalLayoutProperties: aMorph].
	
	self addCustomProperties: aMorph.