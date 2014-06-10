accessing
sortBlock

	^ sortBlock ifNil: [sortBlock := [:node1 :node2 | true]]