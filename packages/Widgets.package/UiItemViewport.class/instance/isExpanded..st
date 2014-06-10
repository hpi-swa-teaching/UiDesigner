testing
isExpanded: aModelIndex

	aModelIndex ifNil: [^ true] "the root is always expanded".
	^ (self isExpanded: aModelIndex parent) 
		and: [(self rowFor: aModelIndex) isExpanded]