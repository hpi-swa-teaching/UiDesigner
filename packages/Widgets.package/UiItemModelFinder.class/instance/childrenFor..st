iterator api - private
childrenFor: aParentModelIndex

	| node |
	node := aParentModelIndex
		ifNil: [self root]
		ifNotNil: [:index | index node].
	
	self flag: #performance. "mt: signal connections not necessary. see UiModelIndex>>connectIndex."
	^ (node groups gather: [:group | 
		| indices |
		indices := (1 to: (node childCountInGroup: group)) collect: [:i | 
			self flag: #performance. "mt: Avoid connecting signals in the first place."
			(UiModelIndex
				row: i column: 1 group: group
				groupIndex: nil "not used"
				parent: aParentModelIndex
				node: (node childAt: i inGroup: group)
				spec: nil "not used")
				disconnectNode;
				yourself].
		self sortBlock ifNotNil: [:sb |
			"node unboxing"
			indices := indices sorted: [:i1 :i2 | sb value: i1 node value: i2 node]].
		indices]) asOrderedCollection