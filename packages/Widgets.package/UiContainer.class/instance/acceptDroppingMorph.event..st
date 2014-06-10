dropping/grabbing
acceptDroppingMorph: aMorph event: evt

	| result |
	(aMorph isKindOf: TransferMorph)
		"Hard-wired with UiWidgetModel. Baaaaad."
		ifTrue: [ (aMorph passenger first at: #class ifAbsent: []) ifNotNil: [:widgetClass |
			| widget |
			widget := widgetClass new position: evt position.
			self addMorphBack: widget.
			(widget isKindOf: UiContainer)
				ifTrue: [widget editMode: self editMode].

			self
				changeFocusTo: widget bounds;
				changeSelectionTo: widget.
				
			^ self]].

	result := super acceptDroppingMorph: aMorph event: evt.
	
	self
		changeFocusTo: aMorph bounds;
		changeSelectionTo: aMorph.
	
	^ result