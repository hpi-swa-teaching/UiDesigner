as yet unclassified
recentDesigns

	RecentDesigns ifNil: [RecentDesigns := OrderedCollection new].
	^ RecentDesigns select: [:name | Smalltalk includesKey: name]