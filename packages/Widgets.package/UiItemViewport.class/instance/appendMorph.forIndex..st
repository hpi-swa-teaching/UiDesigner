add/remove - appending
appendMorph: aMorph forIndex: aModelIndex
	
	self
		appendMorph: aMorph
		inRow: (self appendRowFor: aModelIndex)
		forIndex: aModelIndex.