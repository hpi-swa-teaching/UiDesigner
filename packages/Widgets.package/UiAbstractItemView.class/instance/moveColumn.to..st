rows/columns - sorting
moveColumn: sourceIndex to: targetIndex
	"Allows resorting of columns. Indices apply to ACTUALLY VISIBLE indices - not real model data indices."
	
	| map |
	map := self viewport columnOrder map
		ifNil: [(1 to: (self model columnCountFor: nil)) collect: [:i | i]].
	
	map
		at: targetIndex put: sourceIndex;
		at: sourceIndex put: targetIndex.
		
	self viewport columnOrder map: map.
	
	self updateViewportLayout.