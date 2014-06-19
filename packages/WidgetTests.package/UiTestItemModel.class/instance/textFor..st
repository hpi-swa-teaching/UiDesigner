as yet unclassified
textFor: aModelIndex

	aModelIndex row = 0
		ifTrue: [^ nil].

	aModelIndex column = 0 ifTrue: [
		^ aModelIndex row asString].
		
	aModelIndex column = 1 ifTrue: [
		^ (aModelIndex valueOfProperty: #data) key].

	aModelIndex column = 2 ifTrue: [
		^ (aModelIndex valueOfProperty: #data) key size].
