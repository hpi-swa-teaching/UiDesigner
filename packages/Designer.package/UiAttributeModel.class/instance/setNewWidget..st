updating
setNewWidget: widget
	" pass me a widget INSTANCE to have all its attributes listed "
	
	self attributes: (OrderedCollection new).
	
	self addGeneralInformation: widget.
	self addGeometryAttributes: widget.
	self addOwnerSpecificLayout: widget.
	"	
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
	aMorph hasProportionalLayout ifTrue: [self addProportionalLayoutProperties: aMorph]"
	
	self addCustomProperties: widget.
	
	self currentWidget: widget.
	self modelReset.