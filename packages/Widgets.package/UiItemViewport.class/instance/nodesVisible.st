accessing
nodesVisible

	| result |
	result := OrderedCollection new.
	self rowsDo: [:row | row visible
		ifTrue: [row isSeparator ifFalse: [result add: row firstModelIndex node]]].
	^ result