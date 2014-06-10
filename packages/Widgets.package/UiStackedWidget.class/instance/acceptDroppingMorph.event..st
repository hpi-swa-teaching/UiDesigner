edit mode - dropping/grabbing
acceptDroppingMorph: aMorph event: evt

	(aMorph isKindOf: TransferMorph)
		ifTrue: [(aMorph passenger first at: #class ifAbsent: []) ifNotNil: [:widgetClass |
			| widget |
			widget := widgetClass new position: evt position.
			self currentPage addMorphBack: widget.
			(widget isKindOf: UiContainer)
				ifTrue: [widget editMode: self editMode].
				
			self
				changeFocusTo: widget bounds;
				changeSelectionTo: widget]]
		ifFalse: [
			self currentPage addMorphBack: aMorph.
			
			self
				changeFocusTo: aMorph bounds;
				changeSelectionTo: aMorph].
		
	"self updateCurrentPage."