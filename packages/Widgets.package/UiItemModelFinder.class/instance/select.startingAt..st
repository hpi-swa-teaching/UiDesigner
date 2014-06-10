collection api
select: aBlock startingAt: aNode

	| newCollection |
	newCollection := OrderedCollection new.
	self
		do: [:each | (aBlock value: each) ifTrue: [newCollection add: each]]
		startingAt: aNode.
		
	^ newCollection