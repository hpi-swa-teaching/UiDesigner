rows/columns - to info
rowFor: aModelIndex

	^ rows detect: [:row | row includes: aModelIndex]