adding - deferred
processDeferredAdditions
	"Private. Use #beginDeferAdd, #addChild:inGroup:, and #endDeferAdd."
	
	| changedGroups oldSizes |
	changedGroups := OrderedCollection new.
	oldSizes := OrderedCollection new.
	deferredAdditions do: [:nodeToGroup | | group |
		group := nodeToGroup value.
		(changedGroups includes: group) ifFalse: [
			oldSizes add: (self childCountInGroup: group).
			changedGroups add: group].
		
		(self children at: group) add: nodeToGroup key].
	
	changedGroups with: oldSizes do: [:group :oldSize |
		self childrenInsertedFrom: oldSize + 1 to: (self childCountInGroup: group)  inGroup: group].
	
	deferredAdditions removeAll.