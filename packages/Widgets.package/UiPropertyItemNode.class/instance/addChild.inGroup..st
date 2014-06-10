adding
addChild: aNode inGroup: aGroup

	deferAdd == true ifTrue: [
		self addChildDeferred: aNode inGroup: aGroup.
		^ #deferred].

	(self children at: aGroup) add: aNode.
	self childInserted: (self children at: aGroup) size inGroup: aGroup.
	^ aNode