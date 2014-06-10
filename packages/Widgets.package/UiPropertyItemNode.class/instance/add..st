dictionary
add: anAssociation

	(self properties includes: anAssociation key)
		ifFalse: [self properties add: anAssociation key].

	^ super add: anAssociation