events
nextCellFor: currentCell direction: aSymbol

	| deltaMap nextCellBlock skipBlock nextCell oldCell |	
	deltaMap := Dictionary newFrom: {
		#up       -> [:cell | cell - (0@1)].
		#down     -> [:cell | cell + (0@1)].
		#left     -> [:cell | ((self morphAt: cell) valueOfProperty: #hasChildren)
			ifTrue: [cell "collapse sub-tree"] ifFalse: [cell - (1@0)]].
		#right    -> [:cell | ((self morphAt: cell) valueOfProperty: #hasChildren)
			ifTrue: [cell "expand sub-tree"] ifFalse: [cell + (1@0)]].
		#pageUp   -> [:cell | cell - (0@3)].
		#pageDown -> [:cell | cell + (0@3)].
		#home     -> [:cell | cell x @ 2]. "first row; current column; skip separator"
		#end      -> [:cell | cell x @ rows size] "last row; current column"}.
	nextCellBlock := [:cell | ((deltaMap at: aSymbol) value: cell) min: columns size @ rows size max: 1@1].
	nextCell := nextCellBlock value: currentCell.
	
	"Skip separators but only if there are enough cells left."
	oldCell := nil.
	skipBlock := [(((self morphAt: nextCell) valueOfProperty: #selectable) not
		or: [(self rowAt: nextCell y) visible not])
		or: [(self columnAt: nextCell x) visible not]].
	[skipBlock value and: [nextCell ~= oldCell]] whileTrue: [
		oldCell := nextCell.
		nextCell := nextCellBlock value: nextCell].

	^ skipBlock value
		ifTrue: [currentCell]
		ifFalse: [nextCell]