updating
setNewWidget: widget
	" pass me a widget INSTANCE to have all its attributes listed "
	
	Transcript show: widget.
	
	self attributes: (OrderedCollection new).
	
	self addGeneralInformation: widget.
	self addGeometryAttributes: widget.
	self addOwnerSpecificLayout: widget.
	
	"self addSeparator: 'Layout Policy'.
	
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
	"
	widget hasTableLayout ifTrue: [self addTableLayoutProperties: widget].
	widget hasProportionalLayout ifTrue: [self addProportionalLayoutProperties: widget].
	
	self addCustomProperties: widget.
	
	self currentWidget: widget.
	self modelReset.