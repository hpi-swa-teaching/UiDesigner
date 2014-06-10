as yet unclassified
breadth: anInteger

	breadth = anInteger
		ifTrue: [^ self].
	breadth := anInteger.
	(orientation = #horizontal
		ifTrue: [self height: anInteger]
		ifFalse: [self width: anInteger]).
	self redrawLater.