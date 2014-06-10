updating
updateWith: someItems

	| sortedCopy separators separatorPositions lastPos |
	self sortBlock ifNil: [^ self map: nil].	
	someItems ifEmpty: [^ self map: nil].
	
	"link separators with groups"
	separators := someItems select: [:item | item hasProperty: #isGroupSeparator].
	
	"sort without separators"
	sortedCopy := (someItems reject: [:item | item hasProperty: #isGroupSeparator])
		"unbox morphs into nodes"
		sorted: [:item1 :item2 | self sortBlock
			value: (item1 valueOfProperty: #modelIndex) node
			value: (item2 valueOfProperty: #modelIndex) node].
	sortedCopy := (self updateSortedResult: sortedCopy) asOrderedCollection.
	
	"compute separator positions"
	separatorPositions := Array new: separators size.
	separatorPositions at: 1 put: 1.
	separators allButFirst withIndexDo: [:separator :sepId |
		(sortedCopy detect: [:item |
			((separator valueOfProperty: #parentModelIndex) = (item valueOfProperty: #modelIndex) parent
				and: [(separator valueOfProperty: #groupIndex) = (item valueOfProperty: #modelIndex) groupIndex])]
			ifNone: []) ifNotNil: [:item | separatorPositions at: sepId + 1 put: (sortedCopy indexOf: item)]].
	"fill seperator positions for separators not found"
	lastPos := separatorPositions last ifNil: [sortedCopy size + 1 "empty groups past the last item"].
	(separatorPositions size to: 1 by: -1) do: [:index | | pos |
		pos := separatorPositions at: index.
		pos
			ifNil: [separatorPositions at: index put: lastPos]
			ifNotNil: [lastPos := pos]].

	"insert separators again"
	separators withIndexDo: [:separator :sepId |
		sortedCopy add: separator beforeIndex: (separatorPositions at: sepId) + sepId - 1].		
	
	"update index map"
	map := Array new: someItems size.
	sortedCopy withIndexDo: [:item :index |
		map at: index put: (someItems indexOf: item)].