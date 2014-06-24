accessing
addRecentDesign: aClassSymbol

	RecentDesigns ifNil: [RecentDesigns := OrderedCollection new].
	
	RecentDesigns remove: aClassSymbol ifAbsent: []; addFirst: aClassSymbol.
	[RecentDesigns size > 5] whileTrue: [RecentDesigns removeLast].