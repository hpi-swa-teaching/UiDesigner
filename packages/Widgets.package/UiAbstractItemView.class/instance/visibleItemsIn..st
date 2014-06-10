accessing - indices
visibleItemsIn: aColumnNumber

	self flag: #badStyle.
	^ (self viewport columns at: aColumnNumber) items