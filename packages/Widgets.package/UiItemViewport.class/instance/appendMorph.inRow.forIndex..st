add/remove - appending
appendMorph: aMorph inRow: aRowInfo forIndex: aModelIndex
	"Optimized insertion method that assumes that the view is filled row-by-row from left to right."
	
	| col row |
	aMorph setProperty: #modelIndex toValue: aModelIndex.
	aMorph setProperty: #isExpanded toValue: false.
	aMorph setProperty: #hasChildren toValue: aModelIndex hasChildren.
	
	row := aRowInfo.
	row items add: aMorph.
	
	col := self columnFor: aModelIndex.
	col items addLast: aMorph.
	
	self addMorphBack: aMorph.
	
	(aMorph hasProperty: #indent) ifFalse: [
		aMorph
			setProperty: #indent
			toValue: (self calculateIndentFor: aMorph atIndex: aModelIndex column: col)].