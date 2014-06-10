layouting
updateSingleColumnVerticalLayout
	
	| cell hAlignment vAlignment currentGroupItemCount |
	
	self assert: self orientation == #vertical.
	
	"Compute virtual row and column count."
	vRowCount := 0.
	vColumnCount := self width // maxItemExtent x.
	vColumnCount == 0 ifTrue: [^ self "skip layouting"].
	currentGroupItemCount := 0.

	self rows do: [:rowInfo | rowInfo visible ifTrue: [
		rowInfo isSeparator
			ifTrue: [
				vRowCount := vRowCount + 1 + (currentGroupItemCount / vColumnCount) ceiling.
				currentGroupItemCount := 0]
			ifFalse: [
				currentGroupItemCount := currentGroupItemCount + 1]]].
	vRowCount := vRowCount + (currentGroupItemCount / vColumnCount) ceiling.
	
	"Prepare cache and running variables."
	cellToBounds := Array new: vRowCount.
	cell := 0@0.
	hAlignment := self listColumn hAlignment.
	vAlignment := self listColumn vAlignment.

	self rowsDo: [:rowInfo | rowInfo visible ifTrue: [
		| item vOffset hOffset |

		((rowInfo isSeparator or: [cell x == vColumnCount]) or: [cell x == 0]) "line break?"
			ifTrue: [
				cell := 0 @ (cell y + 1).
				cellToBounds at: cell y put: (Array new: vColumnCount)].
		cell := cell + (1@0).
		
		item := rowInfo items first.
		hOffset := cell x-1 * maxItemExtent x.
		vOffset := cell y-1 * maxItemExtent y.
			
		(hAlignment == #left or: [rowInfo isSeparator])
			ifTrue: [item left: hOffset]
			ifFalse: [
				hAlignment == #center
					ifTrue: [item left: hOffset + (maxItemExtent x - item width // 2)].
				hAlignment == #right
					ifTrue: [item right: hOffset + maxItemExtent x]].

		(vAlignment == #top or: [rowInfo isSeparator])
			ifTrue: [item top: vOffset]
			ifFalse: [
				vAlignment == #bottom
					ifTrue: [item bottom: vOffset + maxItemExtent y].
				vAlignment == #center
					ifTrue: [item top: vOffset + (maxItemExtent y - item height // 2)]].

		"Fill bounds cache."
		(cellToBounds at: cell y) at: cell x put: {hOffset@vOffset.maxItemExtent.rowInfo}.

		rowInfo isSeparator "carriage return"
			ifTrue: [cell := 0 @ cell y]]].
			
	"Update dynamically-sized dimension."
	self height: self submorphBounds height.