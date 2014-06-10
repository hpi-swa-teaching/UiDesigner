accessing
hoveredCell: newCellIndex
		
	newCellIndex = hoveredCell
		ifTrue: [^ self].
				
	self
		invalidRect: (self boundsFor: newCellIndex);
		invalidRect: (self boundsFor: hoveredCell).

	"Show/hide checkboxes."
	self updateVisibilityForCheckBoxesFor: newCellIndex old: hoveredCell.
	
	"Set new value."
	hoveredCell := newCellIndex.
	
	self hovered: (self modelIndexFor: hoveredCell).