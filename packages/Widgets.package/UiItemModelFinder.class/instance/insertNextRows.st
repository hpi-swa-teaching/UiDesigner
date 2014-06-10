iterator api - private
insertNextRows

	| newRows |
	newRows := self childrenFor: self currentIndex.

	self traversalMode = #depthFirst ifTrue: [
		newRows reverseDo: [:row |
			iteratorState add: row afterIndex: iteratorPosition]].
	self traversalMode = #breadthFirst ifTrue: [
		iteratorState addAll: newRows].