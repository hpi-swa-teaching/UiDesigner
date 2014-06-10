selection
selection: aSelection

	selection := aSelection.

	selection viewport: self.
	
	self connect: aSelection signal: #selectionChangedFrom:to: toSelector: #onSelectionChangedFrom:to:.
	self connect: aSelection signal: #currentCellChangedFrom:to: toSelector: #onCurrentCellChangedFrom:to:.
	
	self redrawLater.