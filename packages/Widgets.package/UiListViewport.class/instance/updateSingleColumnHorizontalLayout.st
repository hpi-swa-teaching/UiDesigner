layouting
updateSingleColumnHorizontalLayout
	
	| cell hAlignment |
	
	self assert: self orientation == #horizontal.
	
	"Compute virtual row and column count."
	vRowCount := self height // maxItemExtent y.
	vRowCount == 0 ifTrue: [^ self "skip layouting"].
	vColumnCount := (self rowCountVisible / vRowCount) ceiling.
	
	"Prepare cache and running variables."
	cellToBounds := Array new: vRowCount.
	1 to: vRowCount do: [:row | cellToBounds at: row put: (Array new: vColumnCount)].
	cell := 0@0.
	hAlignment := self listColumn hAlignment.

	self rowsDo: [:rowInfo | rowInfo visible ifTrue: [
		| item vOffset hOffset |

		(cell y == vRowCount or: [cell y == 0]) "column break?"
			ifTrue: [cell := cell x + 1 @ 0].
		cell := cell + (0@1).
		
		item := rowInfo items first.
		hOffset := cell x-1 * maxItemExtent x.
		vOffset := cell y-1 * maxItemExtent y.
			
		hAlignment = #left
			ifTrue: [item topLeft: hOffset @ vOffset].
		hAlignment == #center
			ifTrue: [item topLeft: hOffset + (maxItemExtent x - item width // 2) @ vOffset].
		hAlignment == #right
			ifTrue: [item topRight: hOffset + maxItemExtent x @ vOffset].

		"Fill bounds cache."
		(cellToBounds at: cell y) at: cell x put: {hOffset@vOffset.maxItemExtent.rowInfo}]].
			
	"Update dynamically-sized dimension."
	self width: self submorphBounds width.