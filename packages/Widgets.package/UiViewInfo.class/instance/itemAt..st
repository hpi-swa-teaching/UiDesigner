accessing
itemAt: aModelIndex

	^ items detect: [:item | (item valueOfProperty: #modelIndex) = aModelIndex]