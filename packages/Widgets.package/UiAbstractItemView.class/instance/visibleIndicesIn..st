accessing - indices
visibleIndicesIn: aColumnNumber

	self flag: #badStyle.
	^ (self viewport columns at: aColumnNumber) indices