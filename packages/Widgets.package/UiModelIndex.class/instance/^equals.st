comparing
= anotherModelIndex

	^ (super = anotherModelIndex
		and: [self group = anotherModelIndex group])
		and: [self parent = anotherModelIndex parent]