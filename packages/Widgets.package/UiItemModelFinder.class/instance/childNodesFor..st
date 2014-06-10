collection api - private
childNodesFor: aParentNode

	^ aParentNode groups gather: [:group |
		(1 to: (aParentNode childCountInGroup: group)) collect: [:i | aParentNode childAt: i inGroup: group]]