events
nextCellFor: currentCell direction: aSymbol

	| deltaMap nextCellBlock skipBlock nextCell oldCell |	
	self orientation == #default ifTrue: [^ super nextCellFor: currentCell direction: aSymbol].
	
	deltaMap := Dictionary newFrom: {
		#up       -> [:cell | cell - (0@1)].
		#down     -> [:cell | cell + (0@1)].
		#left     -> [:cell | cell - (1@0)].
		#right    -> [:cell | cell + (1@0)].
		#pageUp   -> [:cell | cell - (0@3)].
		#pageDown -> [:cell | cell + (0@3)].
		#home     -> [:cell | self cellIndexDetect: [:c | c notNil and: [c third "row info" isSeparator not]]].
		#end      -> [:cell | vColumnCount @ vRowCount]}.
	nextCellBlock := [:cell | ((deltaMap at: aSymbol) value: cell) min: vColumnCount @ vRowCount max: 1@1].
	nextCell := nextCellBlock value: currentCell.
	
	"Skip separators but only if there are enough cells left."
	oldCell := nil.
	skipBlock := [
		| item |
		item := self morphAt: nextCell.
		(item isNil
			or: [(item valueOfProperty: #selectable) not])
			or: [(self rowAtCell: nextCell) visible not]].
	[skipBlock value and: [nextCell ~= oldCell]] whileTrue: [
		oldCell := nextCell.
		nextCell := nextCellBlock value: nextCell].

	^ skipBlock value
		ifTrue: [currentCell]
		ifFalse: [nextCell]