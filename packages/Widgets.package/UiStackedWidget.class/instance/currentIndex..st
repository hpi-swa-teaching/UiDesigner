accessing
currentIndex: anInteger
	"Change the current page."

	| old |
	(anInteger < 1
		or: [anInteger > self pages size]) ifTrue: [^ self].
	
	old := currentIndex.
	currentIndex := anInteger.
	self updateCurrentPage.
	
	(self animated and: [old notNil])
		ifTrue: [self animatePageTurnFrom: old to: anInteger].