testing
includes: aModelIndex

	^ items anySatisfy: [:item | (item valueOfProperty: #modelIndex) = aModelIndex]